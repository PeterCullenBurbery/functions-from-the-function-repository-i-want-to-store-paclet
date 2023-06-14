(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`ExpressionLineDiff;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ExpressionLineDiff // ClearAll;


(* ::Subsection:: *)
(*Options*)


ExpressionLineDiff // Options = {
    "IndentSize"        -> 1,
    "MergeThreshold"    -> 2,
    "PageWidth"         -> 100,
    PerformanceGoal     -> "Quality",
    "TrimmingThreshold" -> 2
};


(* ::Subsection::Closed:: *)
(*Main definition*)


ExpressionLineDiff[ expr1_, expr2_, opts: OptionsPattern[ ] ] :=
  Module[
      {
          indent, width, limit, fancy, mergeSize,
          s1, s2, aligned, trim, elided, highlighted, strings
      },

      indent    = asPositiveInt[ OptionValue[ "IndentSize"        ], 1        ];
      width     = asPositiveInt[ OptionValue[ "PageWidth"         ], 100      ];
      limit     = asPositiveInt[ OptionValue[ "TrimmingThreshold" ], Infinity ];
      fancy     = OptionValue[ PerformanceGoal ] === "Quality";
      mergeSize = OptionValue[ "MergeThreshold" ];

      s1 = toReadableString[ expr1, indent, width ];
      s2 = toReadableString[ expr2, indent, width ];

      aligned     = lineAlignment[ s1, s2 ];
      trim        = Floor[ limit / 2 ];
      elided      = hideLines[ aligned, limit, trim ];
      highlighted = highlightChanges[ elided, fancy, mergeSize ];
      strings     = StringTrim @ StringJoin @ linesToStrings @ highlighted;

      Style[ strings, LineSpacing -> { 1, 1 }, LineBreakWithin -> False ]
  ];


(* ::Subsection::Closed:: *)
(*Dependencies*)


(* ::Subsubsection::Closed:: *)
(*asPositiveInt*)


asPositiveInt // ClearAll;


asPositiveInt[ n_Integer? Positive, _ ] := n;


asPositiveInt[ _, default_ ] := default;


(* ::Subsubsection::Closed:: *)
(*toReadableString*)


toReadableString // ClearAll;


toReadableString // Attributes = { HoldFirst };


toReadableString[ expr_, indentSize_, pageWidth_ ] := 
    ToString @ ResourceFunction[ "ReadableForm" ][
        Unevaluated @ expr,
        "IndentSize"      -> indentSize,
        "PageWidth"       -> pageWidth,
        "PerformanceGoal" -> "Speed"
    ];


(* ::Subsubsection::Closed:: *)
(*lineAlignment*)


lineAlignment // ClearAll;


lineAlignment[ s1_, s2_ ] := 
    SequenceAlignment[
        line /@ StringSplit[ s1, "\n" ],
        line /@ StringSplit[ s2, "\n" ]
    ];


(* ::Subsubsection::Closed:: *)
(*highlightChanges*)


highlightChanges // ClearAll;


highlightChanges[ elided_, fancy_, mergeSize_ ] := 
    Module[ { formatter },
        formatter = If[ TrueQ @ fancy, formatFancy, formatSimple ];
        Replace[
            elided,
            {
                { { }, l2: { __line } } :> formatNew @ l2,
                { l1: { __line }, { } } :> formatRemoved @ l1,
                { l1: { ___line }, l2: { ___line } } :> formatter[ { before=l1, after=l2 }, mergeSize ]
            },
            { 1 }
        ]
    ];


(* ::Subsubsection::Closed:: *)
(*hideLines*)


hideLines // ClearAll;


hideLines[ aligned_, elideLimit_, trim_ ] := 
    Replace[
        aligned,
        l: { __line } /; Length @ l > elideLimit :> 
            Flatten @ {
                l[[ 1 ;; trim ]],
                line @ formatElided[ l, trim ],
                l[[ -trim ;; All ]]
            },
        { 1 }
    ];


(* ::Subsubsection::Closed:: *)
(*linesToStrings*)


linesToStrings // ClearAll;


linesToStrings[ lines_ ] := lines /. line[l_] :> StringJoin[l, "\n"];


(* ::Subsubsection::Closed:: *)
(*formatNew*)


formatNew // ClearAll;


formatNew[ list_ ] := 
    StringJoin[
        ToString[
            Highlighted[
                StringRiffle[ Cases[ list, line[ l_ ] :> l ], "\n" ],
                Background -> lg,
                FrameMargins -> 0
            ],
            StandardForm
        ],
        "\n"
    ];


(* ::Subsubsection::Closed:: *)
(*formatRemoved*)


formatRemoved // ClearAll;


formatRemoved[ list_ ] := 
    StringJoin[
        ToString[
            Highlighted[
                StringRiffle[ Cases[ list, line[ l_ ] :> l ], "\n" ],
                Background -> lr,
                FrameMargins -> 0
            ],
            StandardForm
        ],
        "\n"
    ];


(* ::Subsubsection::Closed:: *)
(*formatElided*)


formatElided // ClearAll;


formatElided[ l_, trim_ ] := 
    ToString[
        Style[
            elidedLabel[ Length @ l - 2*trim ],
            FontColor -> GrayLevel[ 0.5 ],
            FontSize  -> Inherited*0.8
        ],
        StandardForm
    ];


(* ::Subsubsection::Closed:: *)
(*elidedLabel*)


elidedLabel // ClearAll;


elidedLabel[ 1 ] := Style[ "  \[LeftSkeleton] 1 line not shown \[RightSkeleton]  ", FontFamily -> "Source Sans Pro" ];


elidedLabel[ count_ ] := 
    Style[
        StringJoin[ "  \[LeftSkeleton] ", ToString @ count, " lines not shown \[RightSkeleton]  " ],
        FontFamily -> "Source Sans Pro"
    ];


(* ::Subsubsection::Closed:: *)
(*highlight*)


highlight // ClearAll;


highlight[ "", _ ] := "";


highlight[ s_, color_ ] := 
    ToString[
        Highlighted[ s, Background -> color, FrameMargins -> 0 ],
        StandardForm
    ];


(* ::Subsubsection::Closed:: *)
(*formatFancy*)


formatFancy // ClearAll;


formatFancy[ { before_, after_ }, mergeSize_ ] := 
    Module[ { s1, s2, aligned, m1, m2 },
        s1 = StringRiffle[ Cases[ before, line[ l_ ] :> l ], $nl1 ];
        s2 = StringRiffle[ Cases[ after, line[ l_ ] :> l ], $nl1 ];
        aligned = mergeChanges[ SequenceAlignment[ s1, s2 ], mergeSize ];
        m1 = Replace[ aligned, list_List :> highlight[ list[[1]], dr ], { 1 } ];
        m2 = Replace[ aligned, list_List :> highlight[ list[[2]], dg ], { 1 } ];
        StringJoin @ {
            formatRemoved[ line /@ StringSplit[ StringJoin @ m1, $nl ] ],
            formatNew[ line /@ StringSplit[ StringJoin @ m2, $nl ] ]
        }
    ];


$1 = FromCharacterCode[ 12345 ];
$2 = StringTrim[ ToString @ FullForm @ $1, "\"" ];
$nl1 = StringJoin[ $1, "NEWLINE", $1 ];
$nl2 = Shortest[ $2~~___~~"NEWLINE"~~___~~$2 ];
$nl = $nl1 | $nl2;


(* ::Subsubsection::Closed:: *)
(*mergeChanges*)


mergeChanges // ClearAll;


mergeChanges[ aligned_, mergeSize_? Positive ] := 
    FixedPoint[
        Replace[
            {
                a___,
                { b_String, c_String },
                d_String /; StringLength @ d <= mergeSize,
                { e_String, f_String },
                g___
            } :> { a, { StringJoin[ b, d, e ], StringJoin[ c, d, f ] }, g }
        ],
        aligned
    ];


mergeChanges[ aligned_, _ ] := aligned;


(* ::Subsubsection::Closed:: *)
(*formatSimple*)


formatSimple // ClearAll;


formatSimple[ { before_, after_ }, _ ] := 
    Block[ { lg = dg, lr = dr },
        StringJoin @ { formatRemoved @ before, formatNew @ after }
    ];


(* ::Subsection::Closed:: *)
(*Colors*)


lr = RGBColor[ "#fee8e9" ];
lg = RGBColor[ "#ddffdd" ];
dr = RGBColor[ "#ffb6ba" ];
dg = RGBColor[ "#97f295" ];


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

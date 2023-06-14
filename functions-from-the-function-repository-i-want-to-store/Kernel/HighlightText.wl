(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`HighlightText;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


HighlightText // ClearAll;


(* ::Subsection:: *)
(*Messages*)


(* ::Text:: *)
(*Messages are printed using PrettyTooltipTemplate[\!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*InterpretationBox[*)
(*TagBox[*)
(*StyleBox[*)
(*StyleBox[*)
(*FrameBox[GridBox[{*)
(*{*)
(*StyleBox[*)
(*StyleBox[*)
(*AdjustmentBox["\<\"[\[FilledSmallSquare]]\"\>",*)
(*BoxBaselineShift->-0.25,*)
(*BoxMargins->{{0, 0}, {-1, -1}}], "ResourceFunctionIcon",*)
(*FontColor->RGBColor[0.8745098039215686, 0.2784313725490196, 0.03137254901960784]],*)
(*ShowStringCharacters->False,*)
(*FontFamily->"Source Sans Pro Black",*)
(*FontSize->Rational[10, 13] Inherited,*)
(*FontWeight->"Heavy",*)
(*PrivateFontOptions->{"OperatorSubstitution"->False}], *)
(*StyleBox[*)
(*StyleBox["\<\"ResourceFunctionMessage\"\>", "ResourceFunctionLabel"],*)
(*ShowStringCharacters->False,*)
(*FontSize->Rational[12, 13] Inherited]}*)
(*}]], "ResourceFunctionFrame"],*)
(*FrameBoxOptions->{Background->GrayLevel[0.5, 0.15],*)
(*BaseStyle->{"StandardForm", LineSpacing -> {0, 0}, LineBreakWithin -> False},*)
(*FrameMargins->{{3, 3}, {0, 0}},*)
(*FrameStyle->Directive[GrayLevel[0.5, 0.35], AbsoluteThickness[0.5]],*)
(*RoundingRadius->4},*)
(*GridBoxOptions->{FrameStyle->GrayLevel[1, 0],*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},*)
(*GridBoxFrame->{"Columns" -> {{True}}, "Rows" -> {{True}}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},*)
(*GridBoxSpacings->{"Columns" -> {{0.25}}, "Rows" -> {-0.1, {}, 0}}}],*)
(*{"FunctionResourceBox", RGBColor[0.8745098039215686, 0.2784313725490196, 0.03137254901960784], "\"ResourceFunctionMessage\""}],*)
(*ResourceFunction[ResourceObject[<|"Name" -> "ResourceFunctionMessage", "UUID" -> "99f3bbb5-c9d2-4eaf-8c12-420ceb643e09", "ResourceType" -> "Function", "Version" -> "1.0.0", "Description" -> "Similar to Message, except prints as a labeled message from ResourceFunction with contexts hidden", "RepositoryLocation" -> URL["https://www.wolframcloud.com/objects/resourcesystem/api/1.0"], "WolframLanguageVersionRequired" -> "10.0", "SymbolName" -> "FunctionRepository`$a3f53bc84a2d413094f6f86c9a17b7f2`ResourceFunctionMessage", "FunctionLocation" -> CloudObject["https://www.wolframcloud.com/objects/21023216-81de-4487-80a4-0a264c4b217c"], "ShortName" -> "ResourceFunctionMessage"|>, ResourceSystemBase -> "https://www.wolframcloud.com/objects/resourcesystem/api/1.0"]],*)
(*Selectable->False],*)
(*Appearance->None,*)
(*ButtonFunction:>SystemOpen["\"https://resources.wolframcloud.com/FunctionRepository/resources/ResourceFunctionMessage\""],*)
(*Evaluator->Automatic,*)
(*Method->"Preemptive"],*)
(*MouseAppearanceTag["LinkHand"]]\),"https://resources.wolframcloud.com/FunctionRepository/resources/ResourceFunctionMessage"]:*)


HighlightText::invcol  = "`1` is not a valid highlighting specification.";
HighlightText::invchop = "`1` is not a valid trimming threshold.";
HighlightText::strse   = "String or list of strings expected at position `1` in `2`.";
HighlightText::slen    = "Positive integer, All, or Automatic expected at position `1` in `2`.";
HighlightText::invdcol = "`1` is not a valid default color specification.";


(* ::Subsection:: *)
(*Formatting*)


(* ::Text:: *)
(*This uses PrettyTooltipTemplate[\!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*InterpretationBox[*)
(*TagBox[*)
(*StyleBox[*)
(*StyleBox[*)
(*FrameBox[GridBox[{*)
(*{*)
(*StyleBox[*)
(*StyleBox[*)
(*AdjustmentBox["\<\"[\[FilledSmallSquare]]\"\>",*)
(*BoxBaselineShift->-0.25,*)
(*BoxMargins->{{0, 0}, {-1, -1}}], "ResourceFunctionIcon",*)
(*FontColor->RGBColor[0.8745098039215686, 0.2784313725490196, 0.03137254901960784]],*)
(*ShowStringCharacters->False,*)
(*FontFamily->"Source Sans Pro Black",*)
(*FontSize->Rational[10, 13] Inherited,*)
(*FontWeight->"Heavy",*)
(*PrivateFontOptions->{"OperatorSubstitution"->False}], *)
(*StyleBox[*)
(*StyleBox["\<\"FormatAsResourceFunction\"\>", "ResourceFunctionLabel"],*)
(*ShowStringCharacters->False,*)
(*FontSize->Rational[12, 13] Inherited]}*)
(*}]], "ResourceFunctionFrame"],*)
(*FrameBoxOptions->{Background->GrayLevel[0.5, 0.15],*)
(*BaseStyle->{"StandardForm", LineSpacing -> {0, 0}, LineBreakWithin -> False},*)
(*FrameMargins->{{3, 3}, {0, 0}},*)
(*FrameStyle->Directive[GrayLevel[0.5, 0.35], AbsoluteThickness[0.5]],*)
(*RoundingRadius->4},*)
(*GridBoxOptions->{FrameStyle->GrayLevel[1, 0],*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},*)
(*GridBoxFrame->{"Columns" -> {{True}}, "Rows" -> {{True}}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},*)
(*GridBoxSpacings->{"Columns" -> {{0.25}}, "Rows" -> {-0.1, {}, 0}}}],*)
(*{"FunctionResourceBox", RGBColor[0.8745098039215686, 0.2784313725490196, 0.03137254901960784], "\"FormatAsResourceFunction\""}],*)
(*ResourceFunction[ResourceObject[<|"Name" -> "FormatAsResourceFunction", "UUID" -> "a04b8cc2-23c4-424e-9846-fb9e83ff42ef", "ResourceType" -> "Function", "Version" -> "1.0.0", "Description" -> "Format a symbol as a ResourceFunction in outputs", "RepositoryLocation" -> URL["https://www.wolframcloud.com/objects/resourcesystem/api/1.0"], "WolframLanguageVersionRequired" -> "10.0", "SymbolName" -> "FunctionRepository`$9a23e344af2a439b9bf754d5e4b52c65`FormatAsResourceFunction", "FunctionLocation" -> CloudObject["https://www.wolframcloud.com/objects/ef623453-1f3d-4647-a91c-c7e8a948cbc7"], "ShortName" -> "FormatAsResourceFunction"|>, ResourceSystemBase -> "https://www.wolframcloud.com/objects/resourcesystem/api/1.0"]],*)
(*Selectable->False],*)
(*Appearance->None,*)
(*ButtonFunction:>SystemOpen["\"https://resources.wolframcloud.com/FunctionRepository/resources/FormatAsResourceFunction\""],*)
(*Evaluator->Automatic,*)
(*Method->"Preemptive"],*)
(*MouseAppearanceTag["LinkHand"]]\),"https://resources.wolframcloud.com/FunctionRepository/resources/FormatAsResourceFunction"] to format HighlightText as a \!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*StyleBox["ResourceFunction", "SymbolsRefLink",*)
(*ShowStringCharacters->True,*)
(*FontFamily->"Source Sans Pro"],*)
(*BaseStyle->{"Link"},*)
(*ButtonData->"paclet:ref/ResourceFunction",*)
(*ContentPadding->False],*)
(*MouseAppearanceTag["LinkHand"]]\) since it can be returned if there's an error:*)


ResourceFunction[ "FormatAsResourceFunction" ][ HighlightText ];


(* ::Subsection:: *)
(*Options*)


HighlightText // Options = {
    "TrimmingThreshold" -> None,
    IgnoreCase -> False,
    "DefaultColor" -> RGBColor[0.99609375, 0.92578125, 0.328125]
};


(* ::Subsection:: *)
(*Main definition*)


HighlightText[
    text_String?StringQ,
    spec_,
    n: _Integer?NonNegative|All|Automatic,
    opts: OptionsPattern[]
] :=
    With[
        {
            s = Catch[
                highlightText[
                    text,
                    spec,
                    n,
                    OptionValue["TrimmingThreshold"],
                    OptionValue[IgnoreCase],
                    OptionValue["DefaultColor"]
                ],
                $tag
            ]
        },
        s /; StringQ[s]
    ];


(* ::Text:: *)
(*Use \!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*StyleBox["Automatic", "SymbolsRefLink",*)
(*ShowStringCharacters->True,*)
(*FontFamily->"Source Sans Pro"],*)
(*BaseStyle->{"Link"},*)
(*ButtonData->"paclet:ref/Automatic",*)
(*ContentPadding->False],*)
(*MouseAppearanceTag["LinkHand"]]\) if n is not given:*)


HighlightText[(text_String)?StringQ, spec_, opts: OptionsPattern[]] :=
    With[{t = HighlightText[text, spec, Automatic, opts]},
        t /; StringQ[t]
    ];


(* ::Subsection:: *)
(*Error cases*)


(* ::Text:: *)
(*The value for text should be a valid string:*)


h: HighlightText[invalid: Except[_String?StringQ], ___] := (
    Condition[
        Null,
        ResourceFunction["ResourceFunctionMessage"][
            HighlightText::strse,
            1,
            HoldForm[h]
        ];
        False
    ]
);


(* ::Text:: *)
(*The value for n should be a nonnegative integer, \!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*StyleBox["All", "SymbolsRefLink",*)
(*ShowStringCharacters->True,*)
(*FontFamily->"Source Sans Pro"],*)
(*BaseStyle->{"Link"},*)
(*ButtonData->"paclet:ref/All",*)
(*ContentPadding->False],*)
(*MouseAppearanceTag["LinkHand"]]\), or \!\( *)
(*TagBox[*)
(*ButtonBox[*)
(*StyleBox["Automatic", "SymbolsRefLink",*)
(*ShowStringCharacters->True,*)
(*FontFamily->"Source Sans Pro"],*)
(*BaseStyle->{"Link"},*)
(*ButtonData->"paclet:ref/Automatic",*)
(*ContentPadding->False],*)
(*MouseAppearanceTag["LinkHand"]]\):*)


h: HighlightText[_String?StringQ, _, invalid: Except[OptionsPattern[]], ___] := (
    Condition[
        Null,
        ResourceFunction["ResourceFunctionMessage"][
            HighlightText::slen,
            3,
            HoldForm[h]
        ];
        False
    ]
);


(* ::Subsection:: *)
(*Dependencies*)


(* ::Text:: *)
(*This chooses white or black for the font color depending on how well it contrasts with the chosen highlight background color:*)


fc := fc = ResourceFunction[ResourceFunction[ResourceObject[<|"Name" -> "FontColorFromBackgroundColor", "UUID" -> "bf04e7bf-34f3-44be-944b-174bbf3ad5f8", "ResourceType" -> "Function", "Version" -> "1.0.0", "Description" -> "Determine an appropriate font color from a given background color", "RepositoryLocation" -> URL["https://www.wolframcloud.com/objects/resourcesystem/api/1.0"], "WolframLanguageVersionRequired" -> "11.3", "SymbolName" -> "FunctionRepository`$32a58da0615740e88517f6f64bcff2ad`FontColorFromBackgroundColor", "FunctionLocation" -> CloudObject["https://www.wolframcloud.com/objects/4b7c5a5b-1547-4d46-b0af-976472ddca29"], "ShortName" -> "FontColorFromBackgroundColor"|>, ResourceSystemBase -> "https://www.wolframcloud.com/objects/resourcesystem/api/1.0"]], "Function"];


(* ::Subsubsection:: *)
(*Rule canonicalization*)


makeRules // ClearAll;
makeRules[rules_List] := makeRule /@ rules;
makeRules[rule_Rule] := {makeRule[rule]};
makeRules[word_? GeneralUtilities`StringPatternQ] := {makeRule[word]};


makeRule // ClearAll;

makeRule[lhs_ -> bg: _RGBColor|_GrayLevel] :=
    With[{fg = fc[bg]},
        word: Longest[lhs..] :> ToString[
            Highlighted[
                Style[word, FontColor -> fg],
                ContentPadding -> False,
                Frame -> False,
                FrameMargins -> 0,
                Background -> bg
            ],
            StandardForm
        ]
    ];

makeRule[lhs_ -> bg_] :=
    With[
        {
            conv = Quiet[
                Check[ColorConvert[bg, "RGB"], $Failed, ColorConvert::ccvinput],
                ColorConvert::ccvinput
            ]
        },
        makeRule[lhs -> conv] /; MatchQ[conv, _RGBColor]
    ];

makeRule[lhs_? GeneralUtilities`StringPatternQ] :=
    With[{fg = Black},
        word: Longest[lhs..] :> ToString[
            Highlighted[
                Style[word, FontColor -> fg],
                ContentPadding -> False,
                Frame -> False,
                FrameMargins -> 0,
                Background -> $defaultColor
            ],
            StandardForm
        ]
    ];

makeRule[invalid_] := (
    ResourceFunction["ResourceFunctionMessage"][HighlightText::invcol, invalid];
    Throw[$fail, $tag];
);


(* ::Subsubsection:: *)
(*Text trimming*)


chop // ClearAll;

chop[str_String, Infinity] :=
    str;

chop[str_String, None] :=
    str;

chop[str_String, radius_Integer? Positive] :=
    Module[{len, a, b, n},
        len = StringLength[str];
        If[ len > 2*radius,
            a = StringTake[str, radius];
            b = StringTake[str, -radius];
            n = StringJoin["\[ThinSpace]\[LeftSkeleton]", ToString[len - 2*radius], "\[RightSkeleton]\[ThinSpace]"];
            StringJoin[a, If[StringFreeQ[str, "\n"], n, "\n" <> n <> "\n"], b],
            str
        ]
    ];

chop[_, invalid_] := (
    ResourceFunction["ResourceFunctionMessage"][HighlightText::invchop, invalid];
    Throw[$fail, $tag];
);


(* ::Subsubsection:: *)
(*Main*)


highlightText // ClearAll;

highlightText[_, _, _, _, _, color_ /; !ColorQ[color]] := (
    ResourceFunction["ResourceFunctionMessage"][HighlightText::invdcol, color];
    Throw[$fail, $tag];
);

highlightText[text_String?StringQ, spec_, n_, radius_, case_, color_] :=
    Block[ { $defaultColor = color }, Module[{rules, count, split},
        rules = Replace[makeRules[spec], (a_ :> b_) :> a :> $highlighted[b], {1}];
        If[ !MatchQ[rules, {__RuleDelayed}],
            Throw[$fail, $tag]
        ];
        count = Replace[n, (x_Integer)?Positive :> x + 1];
        split = StringSplit[text, rules, count, IgnoreCase -> case];
        StringJoin[
            Replace[
                Replace[split, str_String :> chop[str, radius], {1}],
                $highlighted[s_] :> s,
                {1}
            ]
        ]
    ]];


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`HighlightTextDifferences;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


Options[HighlightTextDifferences]={"AdditionStyles"->{Darker@Green},"RemovalStyles"->{Darker@Red,FontVariations->{"StrikeThrough" -> True}}};

HighlightTextDifferences[a_String,b_String,OptionsPattern[]]:=Text@Style[Row[Flatten[If[StringQ[#],StringSplit[#,{" "->" ","\n"->"\n"}],{Style[#[[1]],OptionValue["RemovalStyles"]],Style[#[[2]],OptionValue["AdditionStyles"]]}]&/@SequenceAlignment[a,b]]],"TextStyling"];
HighlightTextDifferences[a_,b_String,opts:OptionsPattern[]]:=HighlightTextDifferences[ToString[a,InputForm],b,opts];
HighlightTextDifferences[a_String,b_,opts:OptionsPattern[]]:=HighlightTextDifferences[a,ToString[b,InputForm],opts];
HighlightTextDifferences[a_,b_,opts:OptionsPattern[]]:=HighlightTextDifferences[ToString[a,InputForm],ToString[b,InputForm],opts];


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

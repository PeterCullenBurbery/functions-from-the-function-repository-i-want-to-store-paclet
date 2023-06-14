(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`SlugifyString;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


SlugifyString[title_String, OptionsPattern[]] := Module[{output}, output = title; If[ !OptionValue[IgnoreDiacritics], output = Transliterate[output]]; output = StringDelete[output, "'"]; output = StringTrim[StringReplace[output, Except[WordCharacter].. -> OptionValue["SeparatorCharacter"]], OptionValue["SeparatorCharacter"]]; If[OptionValue["ForceLowerCase"], output = ToLowerCase[output]]; output]
 
Options[SlugifyString] = {"ForceLowerCase" -> True, IgnoreDiacritics -> False, "SeparatorCharacter" -> "-"}


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

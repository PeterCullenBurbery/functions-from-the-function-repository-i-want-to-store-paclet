(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringContainsAll;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


StringContainsAll[string_String,patts_List,opts:OptionsPattern[]]:=AllTrue[patts,StringContainsQ[string,#,opts]&];
StringContainsAll[patts_List,opts:OptionsPattern[]][x_]:=StringContainsAll[x,patts,opts]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

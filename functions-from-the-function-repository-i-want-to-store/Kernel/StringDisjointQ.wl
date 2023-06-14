(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringDisjointQ;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


StringDisjointQ[s1_String, s2_String] := DisjointQ[Characters[s1], Characters[s2]]
 
StringDisjointQ[___] := $Failed


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

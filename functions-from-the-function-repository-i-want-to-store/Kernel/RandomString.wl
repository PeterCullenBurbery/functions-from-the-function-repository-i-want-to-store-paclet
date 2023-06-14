(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`RandomString;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


RandomString[] := RandomString[1]
 
RandomString[(n_Integer)?NonNegative | (n_)?(VectorQ[#1, NonNegative[#1] && IntegerQ[#1] & ] & )] := RandomString[Alphabet[$Language], n]
 
RandomString[chars:{_String..}] := RandomString[chars, 1]
 
RandomString[chars:{_String..}, (n_Integer)?NonNegative | (n_)?(VectorQ[#1, NonNegative[#1] && IntegerQ[#1] & ] & )] := Map[StringJoin, RandomChoice[chars, n], {-2}]
 
RandomString[(w_List)?(VectorQ[#1, NumericQ[#1] && NonNegative[#1] & ] & ) -> chars:{_String...}] := RandomString[w -> chars, 1]
 
RandomString[(w_List)?(VectorQ[#1, NumericQ[#1] && NonNegative[#1] & ] & ) -> chars:{_String...}, (n_Integer)?NonNegative | (n_)?(VectorQ[#1, NonNegative[#1] && IntegerQ[#1] & ] & )] := If[Length[w] == Length[chars], Map[StringJoin, RandomChoice[w -> chars, n], {-2}], $Failed]
 
RandomString[e_Entity] := RandomString[e, 1]
 
RandomString[e_Entity, n_] := Module[{chars}, If[EntityTypeName[e] === "Language", chars = Alphabet[e]; If[MatchQ[chars, {_String...}], RandomString[chars, n], Message[RandomString::noalphabetfromentity]; $Failed], If[EntityTypeName[e] === "Alphabet", chars = e["CommonAlphabet"]; If[MatchQ[chars, {_String...}], RandomString[chars, n], Message[RandomString::noalphabetfromentity]; $Failed], Message[RandomString::unrecoglanguage]]]]
 
RandomString["UpperCase", n_:1] := RandomString[ToUpperCase[Alphabet[$Language]], n]
 
RandomString["LowerCase", n_:1] := RandomString[ToLowerCase[Alphabet[$Language]], n]
 
RandomString["Numbers", n_:1] := RandomString[ToString /@ Range[0, 9], n]
 
RandomString["LowerUpperCase" | "UpperLowerCase", n_:1] := RandomString[Join[ToLowerCase[Alphabet[$Language]], ToUpperCase[Alphabet[$Language]]], n]
 
RandomString["LowerUpperCaseNumbers" | "UpperLowerCaseNumbers", n_:1] := RandomString[Join[Join[ToLowerCase[Alphabet[$Language]], ToUpperCase[Alphabet[$Language]]], ToString /@ Range[0, 9]], n]
 
RandomString["LowerCaseNumbers", n_:1] := RandomString[Join[ToLowerCase[Alphabet[$Language]], ToString /@ Range[0, 9]], n]
 
RandomString["UpperCaseNumbers", n_:1] := RandomString[Join[ToUpperCase[Alphabet[$Language]], ToString /@ Range[0, 9]], n];



(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

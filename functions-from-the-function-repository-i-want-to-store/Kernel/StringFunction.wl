(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringFunction;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


StringFunction[f_][(string_String)?StringQ, args___] := Module[{chars, FunctionRepository`$af8a60d46676404a914a8b0d0c9835fb`result, valid}, chars = Characters[string]; FunctionRepository`$af8a60d46676404a914a8b0d0c9835fb`result = f[chars, args]; valid = validQ[FunctionRepository`$af8a60d46676404a914a8b0d0c9835fb`result]; If[ !valid, ResourceFunction["ResourceFunctionMessage"][StringFunction::strings, FunctionRepository`$af8a60d46676404a914a8b0d0c9835fb`result]]; Map[StringJoin, FunctionRepository`$af8a60d46676404a914a8b0d0c9835fb`result, {-2}] /; valid]
 
StringFunction[f_][(strings_List)?validQ, args___] := (StringFunction[f][#1, args] & ) /@ strings
 
StringFunction[f_][other:Except[_?validQ], args___] := Null /; (ResourceFunction["ResourceFunctionMessage"][StringFunction::strse, HoldForm[StringFunction[f][other]]]; False)
 
StringFunction[args___] := Null /; Length[HoldComplete[args]] =!= 1 && (ResourceFunction["ResourceFunctionMessage"][StringFunction::argx, StringFunction, Length[HoldComplete[args]]]; False)
 
StringFunction /: MakeBoxes[expr:StringFunction[___], StandardForm] /;  !TrueQ[$inDef] := Block[{$inDef = True}, ResourceFunction; With[{sb = MakeBoxes[StringFunction, StandardForm], rb = FunctionResource`Private`makeResourceFunctionBoxes["StringFunction"]}, MakeBoxes[expr, StandardForm] /. sb -> rb]]
validQ[arg_] := MatchQ[Flatten[{arg}], {___String?StringQ}]
 
validQ[___] := False


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

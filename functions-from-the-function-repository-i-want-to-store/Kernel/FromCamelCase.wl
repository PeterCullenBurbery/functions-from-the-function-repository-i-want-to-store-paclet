(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`FromCamelCase;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FromCamelCase[expr_String, OptionsPattern[]] := 
  Block[{withKnown, 
    knownWords = Cases[OptionValue["KnownWords"], _String]}, 
   withKnown = 
    Flatten[{StringSplit[expr, (# -> #) & /@ knownWords, 
       IgnoreCase -> OptionValue[IgnoreCase]]}];
   
   StringJoin @@ 
    Riffle[Map[
      If[MemberQ[ToLowerCase /@ knownWords, ToLowerCase[#]], #, 
        Join[(If[TrueQ[OptionValue[ToLowerCase]], 
             MapAt[ToLowerCase, #1, 2 ;; All], #1] & )[
          StringSplit[
           StringJoin @@ StringSplit[
             #, 
             
             If[OptionValue["SingleLetterWords"], 
              x : RegularExpression[
                 "[ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789][\
ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]+"] :> Riffle[Characters[x], " "],
              {}]],
           
           x : RegularExpression[
              "[abcdefghijklmnopqrstuvwxyz][\
ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]"] :> {StringTake[x, {1}], " ", 
             StringTake[x, {2}]}
           ]]]] &, withKnown], " "]
   ];
 
Options[FromCamelCase] = {ToLowerCase -> False, 
   "SingleLetterWords" -> False, "KnownWords" -> {}, 
   IgnoreCase -> False};


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

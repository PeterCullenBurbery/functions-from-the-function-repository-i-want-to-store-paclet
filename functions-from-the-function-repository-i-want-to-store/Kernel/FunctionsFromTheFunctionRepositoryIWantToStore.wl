(* ::Package:: *)

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`ExifAltitude`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`FileNameEdit`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`FileNameWithDate`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`FromCamelCase`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`HighlightText`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`HighlightTextDifferences`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`ExpressionLineDiff`;

<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`RandomString`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`ReadableForm`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`SlugifyString`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringAppend`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringContainsAll`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringDisjointQ`;
<<PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`StringFunction`;


(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"
    ];



(* ::Text:: *)
(*Declare your public symbols here:*)


SayHello;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


SayHello[name_?StringQ] :=
    "Hello " <> name <> "!";



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];

(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"];


(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`FileNameWithDate;


Begin["`Private`"];


(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FileNameWithDate[File[file_]]:=File[FileNameWithDate[file]]

FileNameWithDate[file_]:=Module[{date=DateString[{"Year","-","Month","-","Day","-","Hour24","-","Minute","-","Second"}],
fd=DirectoryName[file],fn=FileBaseName[file],fe=FileExtension[file],d2=Repeated[DigitCharacter,{2}],d4=Repeated[DigitCharacter,{4}]},fn=StringReplace[fn,"--"~~d4~~"-"~~d2~~"-"~~d2~~"-"~~d2~~"-"~~d2~~"-"~~d2~~EndOfString->""];
If[fe=!="",fe="."<>fe];
FileNameJoin[{Switch[fd,"",Nothing(*"."*),_,fd],fn<>"--"<>date<>fe}]
]/;If[StringQ[file]&&StringLength[file]>0,True,
ResourceFunction["ResourceFunctionMessage"][FileNameWithDate::badfile,InputForm[file]];False]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];
EndPackage[];

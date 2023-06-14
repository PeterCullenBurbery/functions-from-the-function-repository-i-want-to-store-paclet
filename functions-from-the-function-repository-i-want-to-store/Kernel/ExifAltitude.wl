(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`"
    ];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`FunctionsFromTheFunctionRepositoryIWantToStore`ExifAltitude;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ExifAltitude // ClearAll

SetAttributes[ExifAltitude, {Listable}]

ExifAltitude::usage = "ExifAltitude[image] returns the altitude of the image in meters if image has the altitude stored in EXIF metadata."

ExifAltitude[image_ ? (Function[{input}, ImageQ[input], {}]) /; !MissingQ[
    Association[Options[image, MetaInformation]][MetaInformation, "Exif",
     "GPSAltitude"]]] :=
    Association[Options[image, MetaInformation]][MetaInformation, "Exif",
         "GPSAltitude"]

ExifAltitude[args___] :=
    Null /; CheckArguments[ExifAltitude[args], 1];



(* ::Section:: *)
(*Package Footer*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];

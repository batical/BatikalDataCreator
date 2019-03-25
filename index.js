"use strict";

const fs = require("fs");
const path = require("path");
const fileLine = "export const data = ";
const webFolder = "./export/web/";
const cloudFolder = "./export/cloud/";

const mobileAppPath = "/Users/sebastienhecart/batikal/Batikal"
const cloudPath = "/Users/sebastienhecart/batikal/BatikalDevFirebaseHosting"
const webPath = "/Users/sebastienhecart/batikal/batikaladmintool"

main().catch(error => console.log(error));
const specificCase = [
  "DepartementZone.json",
  "DJU30.json",
  "DJU2017CH.json",
  "TemperaturBaseExtZone.json",
  "TUBES.json"
];
async function main() {
  await deleteFolderContent(webFolder);
  await deleteFolderContent(cloudFolder);
  //clean folder
  fs.readdirSync("./json").forEach(file => {
    if (!specificCase.includes(file) && file.includes("json")) {
        console.log(file)
      createWebCloud(file.replace(".json", ""));
    }

  });
  // AdoucisseurDiametreDebit.json

  // createWebCloud("AdoucisseurDiametreDebit");.json

  // CapaciteResine.json
  // CoeffD.json
  // CoeffG.json
  
  // CoefficientMajorationBatiment.json


  // CompositionFoyerStandard.json
  // Conductivite.json
  // DJU2017CH.json
  // DJU30.json
  // DataMaterial.json
  // DebitPlomberie.json
  // DepartementZone.json
  // DnGaineEurovent_CarrreRctangulaire.json
  // DnGaineEurovent_Circulaire.json
  // EHPADcompositionECS.json
  // IsolantECS.json
  // LogementCompositionECS.json
  // MasseVolumiqueViscosite.json
  // PerteChargeAccident.json
  // PerteChargeUnite.json
  // RegimeDimensionnement.json
  // RendementProduction.json
  // Rugositeboussicaud20.json
  // Squalitel.json
  // TUBES.json
  // TemperaturBaseExtZone.json
  // TypeRadiateur.json
}

function createWebCloud(url) {
  createWebLabelValue(url);
  createCloud(url);
}

function createWebLabelValue(url) {
  let weburl = `${webFolder}${url}.js`;
  const rawdata = fs.readFileSync(`./json/${url}.json`);
  const jsondata = JSON.parse(rawdata);
  fs.writeFileSync(weburl, fileLine + "[\n");
  for (let index = 0; index < jsondata.length; index++) {
    if (index == jsondata.length - 1) {
      fs.appendFileSync(
        weburl,
        `{value : "${jsondata[index].uuid}", label :  "${
          jsondata[index].name
        }"}\n`
      );
    } else {
      fs.appendFileSync(
        weburl,
        `{value : "${jsondata[index].uuid}", label :  "${
          jsondata[index].name
        }"},\n`
      );
    }
  }
  fs.appendFileSync(weburl, "];");
}

function createCloud(url) {
  let weburl = `${cloudFolder}${url}.js`;
  const rawdata = fs.readFileSync(`./json/${url}.json`);
  const jsondata = JSON.parse(rawdata);
  fs.writeFileSync(weburl, fileLine);
  fs.appendFileSync(weburl, `${JSON.stringify(jsondata)}\n`);
}

async function deleteFolderContent(folder) {}

'use strict';

const fs = require('fs');
const path = require('path');
const fileLine = 'export default  ';
const webFolder = './export/web/';
const cloudFolder = './export/cloud/';

const mobileAppPath = '/Users/sebastienhecart/batikal/Batikal';
const cloudPath =
  '/Users/sebastienhecart/batikal/BatikalDevFirebaseHosting/appfunctions/src/data/Queries/jsonbase/';
const webPath = '/Users/sebastienhecart/batikal/batikaladmintool/';
const fse = require('fs-extra');

main().catch(error => console.log(error));
const specificCase = [
  'DepartementZone.json',
  'DJU.json',
  'DJUClim.json',
  'TemperaturBaseExtZone.json',
  'TUBES.json',
  'DataMaterial.json'
];

const notNeededForWeb = ['DnGaineEurovent_CarrreRctangulaire'];

async function main() {
  await fse.emptyDir(webFolder);
  await fse.emptyDir(cloudFolder);
  //clean folder
  fs.readdirSync('./json').forEach(file => {
    if (!specificCase.includes(file) && file.includes('json')) {
      console.log(file);
      createWebCloud(file.replace('.json', ''));
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
  createRDJU();
  createDataMaterial();
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
  createTube();
  // TemperaturBaseExtZone.json
  // TypeRadiateur.json
  //copy file
  fs.readdirSync('./export/web').forEach(file => {
    if (!specificCase.includes(file) && file.includes('js')) {
      fs.copyFileSync(
        './export/web/' + file,
        webPath + 'src/data/Queries/json/' + file
      );
    }
  });
  fs.readdirSync('./export/cloud').forEach(file => {
    if (!specificCase.includes(file) && file.includes('js')) {
      fs.copyFileSync('./export/cloud/' + file, cloudPath + file);
    }
  });
}

function createWebCloud(url) {
  if (!notNeededForWeb.includes(url)) {
    createWebLabelValue(url);
  }
  createCloud(url);
}

function createWebLabelValue(url) {
  let weburl = `${webFolder}${url}.js`;
  const rawdata = fs.readFileSync(`./json/${url}.json`);
  const jsondata = sortData(JSON.parse(rawdata), url);

  fs.writeFileSync(weburl, fileLine + '[\n');
  for (let index = 0; index < jsondata.length; index++) {
    fs.appendFileSync(
      weburl,
      `{value : "${jsondata[index].uuid}",
         label :  "${jsondata[index].name}"}` +
        (index == jsondata.length - 1 ? '' : ',') +
        '\n'
    );
  }
  fs.appendFileSync(weburl, '];');
}

function createCloud(url) {
  let cloudurl = `${cloudFolder}${url}.js`;
  const rawdata = fs.readFileSync(`./json/${url}.json`);
  const jsondata = sortData(JSON.parse(rawdata), url);
  fs.writeFileSync(cloudurl, fileLine);
  fs.appendFileSync(cloudurl, `${JSON.stringify(jsondata)}\n`);
}

function createDataMaterial() {
  let weburl = `${webFolder}DataMaterial.js`;
  const rawdata = fs.readFileSync(`./json/DataMaterial.json`);
  const jsondata = sortData(JSON.parse(rawdata), 'DataMaterial');
  fs.writeFileSync(weburl, fileLine + '[\n');
  for (let index = 0; index < jsondata.length; index++) {
    if (index == jsondata.length - 1) {
      fs.appendFileSync(
        weburl,
        `{value : "${jsondata[index].uuid}", label :  "${
          jsondata[index].name
        }", material : "${jsondata[index].material}"}\n`
      );
    } else {
      fs.appendFileSync(
        weburl,
        `{value : "${jsondata[index].uuid}", label :  "${
          jsondata[index].name
        }", material :"${jsondata[index].material}"},\n`
      );
    }
  }
  fs.appendFileSync(weburl, '];');
  createCloud('DataMaterial');
}

function createTube() {
  let cloudurl = `${cloudFolder}RTubes.js`;
  let weburl = `${webFolder}RTubes.js`;
  const rawdata = fs.readFileSync(`./json/TUBES.json`);
  const fetchData = JSON.parse(rawdata);

  fetchData.sort((a, b) => {
    let materialA = a.material.toLowerCase(),
      materialB = b.material.toLowerCase();
    if (materialA < materialB) {
      //sort string ascending}
      return -1;
    }
    if (materialA > materialB) {
      return 1;
    }
    if (materialA === materialB) {
      return a.diamInt - b.diamInt;
    }
  });
  //create hydraulique

  fs.writeFileSync(weburl, 'export const gaz = [\n');
  let res = fetchData.filter(item => item.type == 'GAZ');
  let filtered = [...new Set(res.map(item => item.material))];

  filtered.map(material => {
    let res2 = res.filter(item => item.material == material);
    fs.appendFileSync(
      weburl,
      `{value : "${material}", label :"${material}" ,children : [\n`
    );
    for (let index = 0; index < res2.length; index++) {
      fs.appendFileSync(
        weburl,
        `{value : "${res2[index].uuid}",
           label :  "${res2[index].name}"}` +
          (index == res2.length - 1 ? '' : ',') +
          '\n'
      );
    }
    fs.appendFileSync(weburl, `]},\n`);
  });
  fs.appendFileSync(weburl, '];\n');
  fs.appendFileSync(weburl, 'export const hydraulique = [\n');
  res = fetchData.filter(item => item.type == 'HYDRAULIQUE');
  filtered = [...new Set(res.map(item => item.material))];

  filtered.map(material => {
    let res2 = res.filter(item => item.material == material);
    fs.appendFileSync(
      weburl,
      `{value : "${material}", label :"${material}" ,children : [\n`
    );
    for (let index = 0; index < res2.length; index++) {
      fs.appendFileSync(
        weburl,
        `{value : "${res2[index].uuid}",
           label :  "${res2[index].name}"}` +
          (index == res2.length - 1 ? '' : ',') +
          '\n'
      );
    }
    fs.appendFileSync(weburl, `]},\n`);
  });
  fs.appendFileSync(weburl, '];\n');
  //create gaz
  fs.appendFileSync(weburl, 'export const I10TMPATT = [\n');
  res = fetchData.filter(item => item.type == 'HYDRAULIQUE');
  filtered = [...new Set(res.map(item => item.material))];

  filtered.map(material => {
    let res2 = res
      .filter(item => item.material == material)
      .filter(item => item.diamExt <= 28);
    fs.appendFileSync(
      weburl,
      `{value : "${material}", label :"${material}" ,children : [\n`
    );
    for (let index = 0; index < res2.length; index++) {
      fs.appendFileSync(
        weburl,
        `{value : "${res2[index].uuid}",
           label :  "${res2[index].name}"}` +
          (index == res2.length - 1 ? '' : ',') +
          '\n'
      );
    }
    fs.appendFileSync(weburl, `]},\n`);
  });
  fs.appendFileSync(weburl, '];\n');

  fs.writeFileSync(cloudurl, fileLine);
  fs.appendFileSync(cloudurl, `${JSON.stringify(fetchData)}\n`);
}

function createRDJU() {
  let cloudurl = `${cloudFolder}DJU.js`;
  let weburl = `${webFolder}DJU.js`;
  const rawdata30 = fs.readFileSync(`./json/DJU.json`);
  const mergeData = sortData(JSON.parse(rawdata30));
  fs.writeFileSync(cloudurl, fileLine);
  fs.appendFileSync(cloudurl, `${JSON.stringify(mergeData)}\n`);
  fs.writeFileSync(weburl, fileLine + '[\n');

  fs.appendFileSync(weburl, '{value : "30ans", label :"30ans" ,children : [\n');
  for (let index = 0; index < mergeData.length; index++) {
    if (mergeData[index].annee == '30ans') {
      fs.appendFileSync(
        weburl,
        `{value : "${mergeData[index].uuid}",
         label :  "${mergeData[index].name}"}` +
          (index == mergeData.length - 1 ? '' : ',') +
          '\n'
      );
    }
  }
  fs.appendFileSync(weburl, ']},');
  fs.appendFileSync(weburl, '{value : "2015", label :"2015" ,children : [\n');
  for (let index = 0; index < mergeData.length; index++) {
    if (mergeData[index].annee == '2015') {
      fs.appendFileSync(
        weburl,
        `{value : "${mergeData[index].uuid}",
         label :  "${mergeData[index].name}"}` +
          (index == mergeData.length - 1 ? '' : ',') +
          '\n'
      );
    }
  }
  fs.appendFileSync(weburl, ']},');
  fs.appendFileSync(weburl, '{value : "2016", label :"2016" ,children : [\n');
  for (let index = 0; index < mergeData.length; index++) {
    if (mergeData[index].annee == '2016') {
      fs.appendFileSync(
        weburl,
        `{value : "${mergeData[index].uuid}",
         label :  "${mergeData[index].name}"}` +
          (index == mergeData.length - 1 ? '' : ',') +
          '\n'
      );
    }
  }
  fs.appendFileSync(weburl, ']},');
  fs.appendFileSync(weburl, '{value : "2017", label :"2017" ,children : [\n');
  for (let index = 0; index < mergeData.length; index++) {
    if (mergeData[index].annee == '2017') {
      fs.appendFileSync(
        weburl,
        `{value : "${mergeData[index].uuid}",
         label :  "${mergeData[index].name}"}` +
          (index == mergeData.length - 1 ? '' : ',') +
          '\n'
      );
    }
  }
  fs.appendFileSync(weburl, ']},');
  fs.appendFileSync(weburl, '{value : "2018", label :"2018" ,children : [\n');
  for (let index = 0; index < mergeData.length; index++) {
    if (mergeData[index].annee == '2018') {
      fs.appendFileSync(
        weburl,
        `{value : "${mergeData[index].uuid}",
         label :  "${mergeData[index].name}"}` +
          (index == mergeData.length - 1 ? '' : ',') +
          '\n'
      );
    }
  }
  fs.appendFileSync(weburl, ']}');
  fs.appendFileSync(weburl, '];');
  fs.writeFileSync(cloudurl, fileLine);
  fs.appendFileSync(cloudurl, `${JSON.stringify(mergeData)}\n`);
}

function sortData(jsondata, file) {
  if (file == 'MasseVolumiqueViscosite') {
    return jsondata.sort((a, b) => {
      let nameA = a.temperature,
        nameB = b.temperature;
      if (nameA < nameB) {
        //sort string ascending}
        return -1;
      }
      if (nameA > nameB) {
        return 1;
      }
      return 0;
    });
  }

  return jsondata.sort((a, b) => {
    let nameA = a.name.toLowerCase(),
      nameB = b.name.toLowerCase();
    if (nameA < nameB) {
      //sort string ascending}
      return -1;
    }
    if (nameA > nameB) {
      return 1;
    }
    return 0;
  });
}

async function deleteFolderContent(folder) {}

#!/bin/bash
#
# Requires bash version >= 4
# 
# The script uses the command line tool 'curl' for querying
# the MAST Download service for public and protected data. 
#

type -P curl >&/dev/null || { echo "This script requires curl. Exiting." >&2; exit 1; }



# Check for existing Download Folder
# prompt user for overwrite, if found
let EXTENSION=0
FOLDER=MAST_2022-08-31T0910
DOWNLOAD_FOLDER=$FOLDER
if [ -d $DOWNLOAD_FOLDER ]
then
  echo -n "Download folder ${DOWNLOAD_FOLDER} found, (C)ontinue writing to existing folder or use (N)ew folder? [N]> "
  read -n1 ans
  if [ "$ans" = "c" -o "$ans" = "C" ]
  then
    echo ""
    echo "Downloading to existing folder: ${DOWNLOAD_FOLDER}"
    CONT="-C -"
  else
    while [ -d $DOWNLOAD_FOLDER ]
    do
      ((EXTENSION++))
      DOWNLOAD_FOLDER="${FOLDER}-${EXTENSION}"
    done

    echo ""
    echo "Downloading to new folder: ${DOWNLOAD_FOLDER}"
  fi
fi

# mkdir if it doesn't exist and download files there. 
mkdir -p ${DOWNLOAD_FOLDER}

cat >${DOWNLOAD_FOLDER}/MANIFEST.HTML<<EOT
<!DOCTYPE html>
<html>
    <head>
        <title>MAST_2022-08-31T0910</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2022-08-31T0910</h2>
        <h3>Total Files: 692</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-c1001_t014_niriss_clear-f115w/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-c1001_t014_niriss_clear-f200w/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-c1002_t003_niriss_clear-f115w/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-c1002_t003_niriss_clear-f200w/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-c1003_t015_niriss_clear-f115w/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-c1003_t015_niriss_clear-f200w/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-c1004_t005_niriss_clear-f115w/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-c1004_t005_niriss_clear-f200w/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-c1005_t006_niriss_clear-f115w/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-c1005_t006_niriss_clear-f200w/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_miri_f1000w/jw01448-o001_t024_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_miri_f1280w/jw01448-o001_t024_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_miri_f560w/jw01448-o001_t024_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_miri_f770w/jw01448-o001_t024_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f070w/jw01448-o001_t024_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f115w/jw01448-o001_t024_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f150w/jw01448-o001_t024_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f200w/jw01448-o001_t024_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f277w/jw01448-o001_t024_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f356w/jw01448-o001_t024_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f444w/jw01448-o001_t024_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o001_t024_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o001_t024_nircam_clear-f480m/jw01448-o001_t024_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_miri_f1000w/jw01448-o002_t014_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_miri_f1280w/jw01448-o002_t014_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_miri_f560w/jw01448-o002_t014_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_miri_f770w/jw01448-o002_t014_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f070w/jw01448-o002_t014_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f115w/jw01448-o002_t014_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f150w/jw01448-o002_t014_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f200w/jw01448-o002_t014_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f277w/jw01448-o002_t014_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f356w/jw01448-o002_t014_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f444w/jw01448-o002_t014_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o002_t014_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o002_t014_nircam_clear-f480m/jw01448-o002_t014_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_miri_f1000w/jw01448-o003_t003_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_miri_f1280w/jw01448-o003_t003_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_miri_f560w/jw01448-o003_t003_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_miri_f770w/jw01448-o003_t003_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f070w/jw01448-o003_t003_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f115w/jw01448-o003_t003_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f150w/jw01448-o003_t003_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f200w/jw01448-o003_t003_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f277w/jw01448-o003_t003_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f356w/jw01448-o003_t003_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f444w/jw01448-o003_t003_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o003_t003_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o003_t003_nircam_clear-f480m/jw01448-o003_t003_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_miri_f1000w/jw01448-o004_t015_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_miri_f1280w/jw01448-o004_t015_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_miri_f560w/jw01448-o004_t015_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_miri_f770w/jw01448-o004_t015_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f070w/jw01448-o004_t015_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f115w/jw01448-o004_t015_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f150w/jw01448-o004_t015_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f200w/jw01448-o004_t015_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f277w/jw01448-o004_t015_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f356w/jw01448-o004_t015_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f444w/jw01448-o004_t015_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o004_t015_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o004_t015_nircam_clear-f480m/jw01448-o004_t015_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_miri_f1000w/jw01448-o005_t005_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_miri_f1280w/jw01448-o005_t005_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_miri_f560w/jw01448-o005_t005_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_miri_f770w/jw01448-o005_t005_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f070w/jw01448-o005_t005_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f115w/jw01448-o005_t005_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f150w/jw01448-o005_t005_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f200w/jw01448-o005_t005_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f277w/jw01448-o005_t005_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f356w/jw01448-o005_t005_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f444w/jw01448-o005_t005_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o005_t005_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o005_t005_nircam_clear-f480m/jw01448-o005_t005_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_miri_f1000w/jw01448-o006_t006_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_miri_f1280w/jw01448-o006_t006_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_miri_f560w/jw01448-o006_t006_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_miri_f770w/jw01448-o006_t006_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f070w/jw01448-o006_t006_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f115w/jw01448-o006_t006_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f150w/jw01448-o006_t006_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f200w/jw01448-o006_t006_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f277w/jw01448-o006_t006_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f356w/jw01448-o006_t006_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f444w/jw01448-o006_t006_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o006_t006_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o006_t006_nircam_clear-f480m/jw01448-o006_t006_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_miri_f1000w/jw01448-o007_t018_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_miri_f1280w/jw01448-o007_t018_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_miri_f560w/jw01448-o007_t018_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_miri_f770w/jw01448-o007_t018_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f070w/jw01448-o007_t018_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f115w/jw01448-o007_t018_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f150w/jw01448-o007_t018_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f200w/jw01448-o007_t018_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f277w/jw01448-o007_t018_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f356w/jw01448-o007_t018_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f444w/jw01448-o007_t018_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o007_t018_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o007_t018_nircam_clear-f480m/jw01448-o007_t018_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_miri_f1000w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_miri_f1000w/jw01448-o008_t016_miri_f1000w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_miri_f1280w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_miri_f1280w/jw01448-o008_t016_miri_f1280w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_miri_f560w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_miri_f560w/jw01448-o008_t016_miri_f560w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_miri_f770w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_miri_f770w/jw01448-o008_t016_miri_f770w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f070w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f070w/jw01448-o008_t016_nircam_clear-f070w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f115w/jw01448-o008_t016_nircam_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f150w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f150w/jw01448-o008_t016_nircam_clear-f150w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f200w/jw01448-o008_t016_nircam_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f277w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f277w/jw01448-o008_t016_nircam_clear-f277w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f356w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f356w/jw01448-o008_t016_nircam_clear-f356w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f444w_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f444w/jw01448-o008_t016_nircam_clear-f444w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o008_t016_nircam_clear-f480m_i2d.fits</td>
                <td>JWST/jw01448-o008_t016_nircam_clear-f480m/jw01448-o008_t016_nircam_clear-f480m_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o012_t014_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o012_t014_niriss_clear-f115w/jw01448-o012_t014_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o012_t014_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o012_t014_niriss_clear-f200w/jw01448-o012_t014_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o013_t003_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o013_t003_niriss_clear-f115w/jw01448-o013_t003_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o013_t003_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o013_t003_niriss_clear-f200w/jw01448-o013_t003_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o014_t015_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o014_t015_niriss_clear-f115w/jw01448-o014_t015_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o014_t015_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o014_t015_niriss_clear-f200w/jw01448-o014_t015_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o015_t005_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o015_t005_niriss_clear-f115w/jw01448-o015_t005_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o015_t005_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o015_t005_niriss_clear-f200w/jw01448-o015_t005_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o016_t006_niriss_clear-f115w_i2d.fits</td>
                <td>JWST/jw01448-o016_t006_niriss_clear-f115w/jw01448-o016_t006_niriss_clear-f115w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448-o016_t006_niriss_clear-f200w_i2d.fits</td>
                <td>JWST/jw01448-o016_t006_niriss_clear-f200w/jw01448-o016_t006_niriss_clear-f200w_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00001_nrcb1/jw01448001001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00001_nrcb2/jw01448001001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00001_nrcb3/jw01448001001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00001_nrcb4/jw01448001001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00001_nrcblong/jw01448001001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00002_nrcb1/jw01448001001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00002_nrcb2/jw01448001001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00002_nrcb3/jw01448001001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00002_nrcb4/jw01448001001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00002_nrcblong/jw01448001001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00003_nrcb1/jw01448001001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00003_nrcb2/jw01448001001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00003_nrcb3/jw01448001001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00003_nrcb4/jw01448001001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_02101_00003_nrcblong/jw01448001001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_02201_00001_mirimage/jw01448001001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_02201_00002_mirimage/jw01448001001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_02201_00003_mirimage/jw01448001001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00001_nrcb1/jw01448001001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00001_nrcb2/jw01448001001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00001_nrcb3/jw01448001001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00001_nrcb4/jw01448001001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00001_nrcblong/jw01448001001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00002_nrcb1/jw01448001001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00002_nrcb2/jw01448001001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00002_nrcb3/jw01448001001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00002_nrcb4/jw01448001001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00002_nrcblong/jw01448001001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00003_nrcb1/jw01448001001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00003_nrcb2/jw01448001001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00003_nrcb3/jw01448001001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00003_nrcb4/jw01448001001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_04101_00003_nrcblong/jw01448001001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_04201_00001_mirimage/jw01448001001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_04201_00002_mirimage/jw01448001001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_04201_00003_mirimage/jw01448001001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00001_nrcb1/jw01448001001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00001_nrcb2/jw01448001001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00001_nrcb3/jw01448001001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00001_nrcb4/jw01448001001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00001_nrcblong/jw01448001001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00002_nrcb1/jw01448001001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00002_nrcb2/jw01448001001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00002_nrcb3/jw01448001001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00002_nrcb4/jw01448001001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00002_nrcblong/jw01448001001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00003_nrcb1/jw01448001001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00003_nrcb2/jw01448001001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00003_nrcb3/jw01448001001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00003_nrcb4/jw01448001001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_06101_00003_nrcblong/jw01448001001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_06201_00001_mirimage/jw01448001001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_06201_00002_mirimage/jw01448001001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_06201_00003_mirimage/jw01448001001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00001_nrcb1/jw01448001001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00001_nrcb2/jw01448001001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00001_nrcb3/jw01448001001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00001_nrcb4/jw01448001001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00001_nrcblong/jw01448001001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00002_nrcb1/jw01448001001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00002_nrcb2/jw01448001001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00002_nrcb3/jw01448001001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00002_nrcb4/jw01448001001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00002_nrcblong/jw01448001001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00003_nrcb1/jw01448001001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00003_nrcb2/jw01448001001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00003_nrcb3/jw01448001001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00003_nrcb4/jw01448001001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448001001_08101_00003_nrcblong/jw01448001001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_08201_00001_mirimage/jw01448001001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_08201_00002_mirimage/jw01448001001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448001001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448001001_08201_00003_mirimage/jw01448001001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00001_nrcb1/jw01448002001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00001_nrcb2/jw01448002001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00001_nrcb3/jw01448002001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00001_nrcb4/jw01448002001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00001_nrcblong/jw01448002001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00002_nrcb1/jw01448002001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00002_nrcb2/jw01448002001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00002_nrcb3/jw01448002001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00002_nrcb4/jw01448002001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00002_nrcblong/jw01448002001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00003_nrcb1/jw01448002001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00003_nrcb2/jw01448002001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00003_nrcb3/jw01448002001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00003_nrcb4/jw01448002001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_02101_00003_nrcblong/jw01448002001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_02201_00001_mirimage/jw01448002001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_02201_00002_mirimage/jw01448002001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_02201_00003_mirimage/jw01448002001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00001_nrcb1/jw01448002001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00001_nrcb2/jw01448002001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00001_nrcb3/jw01448002001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00001_nrcb4/jw01448002001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00001_nrcblong/jw01448002001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00002_nrcb1/jw01448002001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00002_nrcb2/jw01448002001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00002_nrcb3/jw01448002001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00002_nrcb4/jw01448002001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00002_nrcblong/jw01448002001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00003_nrcb1/jw01448002001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00003_nrcb2/jw01448002001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00003_nrcb3/jw01448002001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00003_nrcb4/jw01448002001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_04101_00003_nrcblong/jw01448002001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_04201_00001_mirimage/jw01448002001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_04201_00002_mirimage/jw01448002001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_04201_00003_mirimage/jw01448002001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00001_nrcb1/jw01448002001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00001_nrcb2/jw01448002001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00001_nrcb3/jw01448002001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00001_nrcb4/jw01448002001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00001_nrcblong/jw01448002001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00002_nrcb1/jw01448002001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00002_nrcb2/jw01448002001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00002_nrcb3/jw01448002001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00002_nrcb4/jw01448002001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00002_nrcblong/jw01448002001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00003_nrcb1/jw01448002001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00003_nrcb2/jw01448002001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00003_nrcb3/jw01448002001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00003_nrcb4/jw01448002001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_06101_00003_nrcblong/jw01448002001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_06201_00001_mirimage/jw01448002001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_06201_00002_mirimage/jw01448002001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_06201_00003_mirimage/jw01448002001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00001_nrcb1/jw01448002001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00001_nrcb2/jw01448002001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00001_nrcb3/jw01448002001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00001_nrcb4/jw01448002001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00001_nrcblong/jw01448002001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00002_nrcb1/jw01448002001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00002_nrcb2/jw01448002001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00002_nrcb3/jw01448002001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00002_nrcb4/jw01448002001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00002_nrcblong/jw01448002001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00003_nrcb1/jw01448002001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00003_nrcb2/jw01448002001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00003_nrcb3/jw01448002001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00003_nrcb4/jw01448002001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448002001_08101_00003_nrcblong/jw01448002001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_08201_00001_mirimage/jw01448002001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_08201_00002_mirimage/jw01448002001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448002001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448002001_08201_00003_mirimage/jw01448002001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00001_nrcb1/jw01448003001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00001_nrcb2/jw01448003001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00001_nrcb3/jw01448003001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00001_nrcb4/jw01448003001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00001_nrcblong/jw01448003001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00002_nrcb1/jw01448003001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00002_nrcb2/jw01448003001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00002_nrcb3/jw01448003001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00002_nrcb4/jw01448003001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00002_nrcblong/jw01448003001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00003_nrcb1/jw01448003001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00003_nrcb2/jw01448003001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00003_nrcb3/jw01448003001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00003_nrcb4/jw01448003001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_02101_00003_nrcblong/jw01448003001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_02201_00001_mirimage/jw01448003001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_02201_00002_mirimage/jw01448003001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_02201_00003_mirimage/jw01448003001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00001_nrcb1/jw01448003001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00001_nrcb2/jw01448003001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00001_nrcb3/jw01448003001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00001_nrcb4/jw01448003001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00001_nrcblong/jw01448003001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00002_nrcb1/jw01448003001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00002_nrcb2/jw01448003001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00002_nrcb3/jw01448003001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00002_nrcb4/jw01448003001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00002_nrcblong/jw01448003001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00003_nrcb1/jw01448003001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00003_nrcb2/jw01448003001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00003_nrcb3/jw01448003001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00003_nrcb4/jw01448003001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_04101_00003_nrcblong/jw01448003001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_04201_00001_mirimage/jw01448003001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_04201_00002_mirimage/jw01448003001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_04201_00003_mirimage/jw01448003001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00001_nrcb1/jw01448003001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00001_nrcb2/jw01448003001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00001_nrcb3/jw01448003001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00001_nrcb4/jw01448003001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00001_nrcblong/jw01448003001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00002_nrcb1/jw01448003001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00002_nrcb2/jw01448003001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00002_nrcb3/jw01448003001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00002_nrcb4/jw01448003001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00002_nrcblong/jw01448003001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00003_nrcb1/jw01448003001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00003_nrcb2/jw01448003001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00003_nrcb3/jw01448003001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00003_nrcb4/jw01448003001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_06101_00003_nrcblong/jw01448003001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_06201_00001_mirimage/jw01448003001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_06201_00002_mirimage/jw01448003001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_06201_00003_mirimage/jw01448003001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00001_nrcb1/jw01448003001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00001_nrcb2/jw01448003001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00001_nrcb3/jw01448003001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00001_nrcb4/jw01448003001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00001_nrcblong/jw01448003001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00002_nrcb1/jw01448003001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00002_nrcb2/jw01448003001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00002_nrcb3/jw01448003001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00002_nrcb4/jw01448003001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00002_nrcblong/jw01448003001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00003_nrcb1/jw01448003001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00003_nrcb2/jw01448003001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00003_nrcb3/jw01448003001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00003_nrcb4/jw01448003001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448003001_08101_00003_nrcblong/jw01448003001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_08201_00001_mirimage/jw01448003001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_08201_00002_mirimage/jw01448003001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448003001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448003001_08201_00003_mirimage/jw01448003001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00001_nrcb1/jw01448004001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00001_nrcb2/jw01448004001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00001_nrcb3/jw01448004001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00001_nrcb4/jw01448004001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00001_nrcblong/jw01448004001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00002_nrcb1/jw01448004001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00002_nrcb2/jw01448004001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00002_nrcb3/jw01448004001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00002_nrcb4/jw01448004001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00002_nrcblong/jw01448004001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00003_nrcb1/jw01448004001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00003_nrcb2/jw01448004001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00003_nrcb3/jw01448004001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00003_nrcb4/jw01448004001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_02101_00003_nrcblong/jw01448004001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_02201_00001_mirimage/jw01448004001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_02201_00002_mirimage/jw01448004001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_02201_00003_mirimage/jw01448004001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00001_nrcb1/jw01448004001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00001_nrcb2/jw01448004001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00001_nrcb3/jw01448004001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00001_nrcb4/jw01448004001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00001_nrcblong/jw01448004001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00002_nrcb1/jw01448004001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00002_nrcb2/jw01448004001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00002_nrcb3/jw01448004001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00002_nrcb4/jw01448004001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00002_nrcblong/jw01448004001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00003_nrcb1/jw01448004001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00003_nrcb2/jw01448004001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00003_nrcb3/jw01448004001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00003_nrcb4/jw01448004001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_04101_00003_nrcblong/jw01448004001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_04201_00001_mirimage/jw01448004001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_04201_00002_mirimage/jw01448004001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_04201_00003_mirimage/jw01448004001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00001_nrcb1/jw01448004001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00001_nrcb2/jw01448004001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00001_nrcb3/jw01448004001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00001_nrcb4/jw01448004001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00001_nrcblong/jw01448004001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00002_nrcb1/jw01448004001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00002_nrcb2/jw01448004001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00002_nrcb3/jw01448004001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00002_nrcb4/jw01448004001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00002_nrcblong/jw01448004001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00003_nrcb1/jw01448004001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00003_nrcb2/jw01448004001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00003_nrcb3/jw01448004001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00003_nrcb4/jw01448004001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_06101_00003_nrcblong/jw01448004001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_06201_00001_mirimage/jw01448004001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_06201_00002_mirimage/jw01448004001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_06201_00003_mirimage/jw01448004001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00001_nrcb1/jw01448004001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00001_nrcb2/jw01448004001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00001_nrcb3/jw01448004001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00001_nrcb4/jw01448004001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00001_nrcblong/jw01448004001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00002_nrcb1/jw01448004001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00002_nrcb2/jw01448004001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00002_nrcb3/jw01448004001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00002_nrcb4/jw01448004001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00002_nrcblong/jw01448004001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00003_nrcb1/jw01448004001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00003_nrcb2/jw01448004001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00003_nrcb3/jw01448004001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00003_nrcb4/jw01448004001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448004001_08101_00003_nrcblong/jw01448004001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_08201_00001_mirimage/jw01448004001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_08201_00002_mirimage/jw01448004001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448004001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448004001_08201_00003_mirimage/jw01448004001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00001_nrcb1/jw01448005001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00001_nrcb2/jw01448005001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00001_nrcb3/jw01448005001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00001_nrcb4/jw01448005001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00001_nrcblong/jw01448005001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00002_nrcb1/jw01448005001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00002_nrcb2/jw01448005001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00002_nrcb3/jw01448005001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00002_nrcb4/jw01448005001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00002_nrcblong/jw01448005001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00003_nrcb1/jw01448005001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00003_nrcb2/jw01448005001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00003_nrcb3/jw01448005001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00003_nrcb4/jw01448005001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_02101_00003_nrcblong/jw01448005001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_02201_00001_mirimage/jw01448005001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_02201_00002_mirimage/jw01448005001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_02201_00003_mirimage/jw01448005001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00001_nrcb1/jw01448005001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00001_nrcb2/jw01448005001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00001_nrcb3/jw01448005001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00001_nrcb4/jw01448005001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00001_nrcblong/jw01448005001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00002_nrcb1/jw01448005001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00002_nrcb2/jw01448005001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00002_nrcb3/jw01448005001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00002_nrcb4/jw01448005001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00002_nrcblong/jw01448005001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00003_nrcb1/jw01448005001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00003_nrcb2/jw01448005001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00003_nrcb3/jw01448005001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00003_nrcb4/jw01448005001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_04101_00003_nrcblong/jw01448005001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_04201_00001_mirimage/jw01448005001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_04201_00002_mirimage/jw01448005001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_04201_00003_mirimage/jw01448005001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00001_nrcb1/jw01448005001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00001_nrcb2/jw01448005001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00001_nrcb3/jw01448005001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00001_nrcb4/jw01448005001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00001_nrcblong/jw01448005001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00002_nrcb1/jw01448005001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00002_nrcb2/jw01448005001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00002_nrcb3/jw01448005001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00002_nrcb4/jw01448005001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00002_nrcblong/jw01448005001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00003_nrcb1/jw01448005001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00003_nrcb2/jw01448005001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00003_nrcb3/jw01448005001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00003_nrcb4/jw01448005001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_06101_00003_nrcblong/jw01448005001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_06201_00001_mirimage/jw01448005001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_06201_00002_mirimage/jw01448005001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_06201_00003_mirimage/jw01448005001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00001_nrcb1/jw01448005001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00001_nrcb2/jw01448005001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00001_nrcb3/jw01448005001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00001_nrcb4/jw01448005001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00001_nrcblong/jw01448005001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00002_nrcb1/jw01448005001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00002_nrcb2/jw01448005001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00002_nrcb3/jw01448005001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00002_nrcb4/jw01448005001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00002_nrcblong/jw01448005001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00003_nrcb1/jw01448005001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00003_nrcb2/jw01448005001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00003_nrcb3/jw01448005001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00003_nrcb4/jw01448005001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448005001_08101_00003_nrcblong/jw01448005001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_08201_00001_mirimage/jw01448005001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_08201_00002_mirimage/jw01448005001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448005001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448005001_08201_00003_mirimage/jw01448005001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00001_nrcb1/jw01448006001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00001_nrcb2/jw01448006001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00001_nrcb3/jw01448006001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00001_nrcb4/jw01448006001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00001_nrcblong/jw01448006001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00002_nrcb1/jw01448006001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00002_nrcb2/jw01448006001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00002_nrcb3/jw01448006001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00002_nrcb4/jw01448006001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00002_nrcblong/jw01448006001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00003_nrcb1/jw01448006001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00003_nrcb2/jw01448006001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00003_nrcb3/jw01448006001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00003_nrcb4/jw01448006001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_02101_00003_nrcblong/jw01448006001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_02201_00001_mirimage/jw01448006001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_02201_00002_mirimage/jw01448006001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_02201_00003_mirimage/jw01448006001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00001_nrcb1/jw01448006001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00001_nrcb2/jw01448006001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00001_nrcb3/jw01448006001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00001_nrcb4/jw01448006001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00001_nrcblong/jw01448006001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00002_nrcb1/jw01448006001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00002_nrcb2/jw01448006001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00002_nrcb3/jw01448006001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00002_nrcb4/jw01448006001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00002_nrcblong/jw01448006001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00003_nrcb1/jw01448006001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00003_nrcb2/jw01448006001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00003_nrcb3/jw01448006001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00003_nrcb4/jw01448006001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_04101_00003_nrcblong/jw01448006001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_04201_00001_mirimage/jw01448006001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_04201_00002_mirimage/jw01448006001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_04201_00003_mirimage/jw01448006001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00001_nrcb1/jw01448006001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00001_nrcb2/jw01448006001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00001_nrcb3/jw01448006001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00001_nrcb4/jw01448006001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00001_nrcblong/jw01448006001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00002_nrcb1/jw01448006001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00002_nrcb2/jw01448006001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00002_nrcb3/jw01448006001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00002_nrcb4/jw01448006001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00002_nrcblong/jw01448006001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00003_nrcb1/jw01448006001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00003_nrcb2/jw01448006001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00003_nrcb3/jw01448006001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00003_nrcb4/jw01448006001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_06101_00003_nrcblong/jw01448006001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_06201_00001_mirimage/jw01448006001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_06201_00002_mirimage/jw01448006001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_06201_00003_mirimage/jw01448006001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00001_nrcb1/jw01448006001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00001_nrcb2/jw01448006001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00001_nrcb3/jw01448006001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00001_nrcb4/jw01448006001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00001_nrcblong/jw01448006001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00002_nrcb1/jw01448006001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00002_nrcb2/jw01448006001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00002_nrcb3/jw01448006001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00002_nrcb4/jw01448006001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00002_nrcblong/jw01448006001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00003_nrcb1/jw01448006001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00003_nrcb2/jw01448006001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00003_nrcb3/jw01448006001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00003_nrcb4/jw01448006001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448006001_08101_00003_nrcblong/jw01448006001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_08201_00001_mirimage/jw01448006001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_08201_00002_mirimage/jw01448006001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448006001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448006001_08201_00003_mirimage/jw01448006001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00001_nrcb1/jw01448007001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00001_nrcb2/jw01448007001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00001_nrcb3/jw01448007001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00001_nrcb4/jw01448007001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00001_nrcblong/jw01448007001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00002_nrcb1/jw01448007001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00002_nrcb2/jw01448007001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00002_nrcb3/jw01448007001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00002_nrcb4/jw01448007001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00002_nrcblong/jw01448007001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00003_nrcb1/jw01448007001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00003_nrcb2/jw01448007001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00003_nrcb3/jw01448007001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00003_nrcb4/jw01448007001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_02101_00003_nrcblong/jw01448007001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_02201_00001_mirimage/jw01448007001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_02201_00002_mirimage/jw01448007001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_02201_00003_mirimage/jw01448007001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00001_nrcb1/jw01448007001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00001_nrcb2/jw01448007001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00001_nrcb3/jw01448007001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00001_nrcb4/jw01448007001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00001_nrcblong/jw01448007001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00002_nrcb1/jw01448007001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00002_nrcb2/jw01448007001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00002_nrcb3/jw01448007001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00002_nrcb4/jw01448007001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00002_nrcblong/jw01448007001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00003_nrcb1/jw01448007001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00003_nrcb2/jw01448007001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00003_nrcb3/jw01448007001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00003_nrcb4/jw01448007001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_04101_00003_nrcblong/jw01448007001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_04201_00001_mirimage/jw01448007001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_04201_00002_mirimage/jw01448007001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_04201_00003_mirimage/jw01448007001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00001_nrcb1/jw01448007001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00001_nrcb2/jw01448007001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00001_nrcb3/jw01448007001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00001_nrcb4/jw01448007001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00001_nrcblong/jw01448007001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00002_nrcb1/jw01448007001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00002_nrcb2/jw01448007001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00002_nrcb3/jw01448007001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00002_nrcb4/jw01448007001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00002_nrcblong/jw01448007001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00003_nrcb1/jw01448007001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00003_nrcb2/jw01448007001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00003_nrcb3/jw01448007001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00003_nrcb4/jw01448007001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_06101_00003_nrcblong/jw01448007001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_06201_00001_mirimage/jw01448007001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_06201_00002_mirimage/jw01448007001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_06201_00003_mirimage/jw01448007001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00001_nrcb1/jw01448007001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00001_nrcb2/jw01448007001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00001_nrcb3/jw01448007001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00001_nrcb4/jw01448007001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00001_nrcblong/jw01448007001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00002_nrcb1/jw01448007001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00002_nrcb2/jw01448007001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00002_nrcb3/jw01448007001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00002_nrcb4/jw01448007001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00002_nrcblong/jw01448007001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00003_nrcb1/jw01448007001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00003_nrcb2/jw01448007001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00003_nrcb3/jw01448007001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00003_nrcb4/jw01448007001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448007001_08101_00003_nrcblong/jw01448007001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_08201_00001_mirimage/jw01448007001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_08201_00002_mirimage/jw01448007001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448007001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448007001_08201_00003_mirimage/jw01448007001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00001_nrcb1/jw01448008001_02101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00001_nrcb2/jw01448008001_02101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00001_nrcb3/jw01448008001_02101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00001_nrcb4/jw01448008001_02101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00001_nrcblong/jw01448008001_02101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00002_nrcb1/jw01448008001_02101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00002_nrcb2/jw01448008001_02101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00002_nrcb3/jw01448008001_02101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00002_nrcb4/jw01448008001_02101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00002_nrcblong/jw01448008001_02101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00003_nrcb1/jw01448008001_02101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00003_nrcb2/jw01448008001_02101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00003_nrcb3/jw01448008001_02101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00003_nrcb4/jw01448008001_02101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_02101_00003_nrcblong/jw01448008001_02101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_02201_00001_mirimage/jw01448008001_02201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_02201_00002_mirimage/jw01448008001_02201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_02201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_02201_00003_mirimage/jw01448008001_02201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00001_nrcb1/jw01448008001_04101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00001_nrcb2/jw01448008001_04101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00001_nrcb3/jw01448008001_04101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00001_nrcb4/jw01448008001_04101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00001_nrcblong/jw01448008001_04101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00002_nrcb1/jw01448008001_04101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00002_nrcb2/jw01448008001_04101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00002_nrcb3/jw01448008001_04101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00002_nrcb4/jw01448008001_04101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00002_nrcblong/jw01448008001_04101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00003_nrcb1/jw01448008001_04101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00003_nrcb2/jw01448008001_04101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00003_nrcb3/jw01448008001_04101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00003_nrcb4/jw01448008001_04101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_04101_00003_nrcblong/jw01448008001_04101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_04201_00001_mirimage/jw01448008001_04201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_04201_00002_mirimage/jw01448008001_04201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_04201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_04201_00003_mirimage/jw01448008001_04201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00001_nrcb1/jw01448008001_06101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00001_nrcb2/jw01448008001_06101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00001_nrcb3/jw01448008001_06101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00001_nrcb4/jw01448008001_06101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00001_nrcblong/jw01448008001_06101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00002_nrcb1/jw01448008001_06101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00002_nrcb2/jw01448008001_06101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00002_nrcb3/jw01448008001_06101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00002_nrcb4/jw01448008001_06101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00002_nrcblong/jw01448008001_06101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00003_nrcb1/jw01448008001_06101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00003_nrcb2/jw01448008001_06101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00003_nrcb3/jw01448008001_06101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00003_nrcb4/jw01448008001_06101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_06101_00003_nrcblong/jw01448008001_06101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_06201_00001_mirimage/jw01448008001_06201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_06201_00002_mirimage/jw01448008001_06201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_06201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_06201_00003_mirimage/jw01448008001_06201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00001_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00001_nrcb1/jw01448008001_08101_00001_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00001_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00001_nrcb2/jw01448008001_08101_00001_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00001_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00001_nrcb3/jw01448008001_08101_00001_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00001_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00001_nrcb4/jw01448008001_08101_00001_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00001_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00001_nrcblong/jw01448008001_08101_00001_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00002_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00002_nrcb1/jw01448008001_08101_00002_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00002_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00002_nrcb2/jw01448008001_08101_00002_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00002_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00002_nrcb3/jw01448008001_08101_00002_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00002_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00002_nrcb4/jw01448008001_08101_00002_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00002_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00002_nrcblong/jw01448008001_08101_00002_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00003_nrcb1_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00003_nrcb1/jw01448008001_08101_00003_nrcb1_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00003_nrcb2_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00003_nrcb2/jw01448008001_08101_00003_nrcb2_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00003_nrcb3_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00003_nrcb3/jw01448008001_08101_00003_nrcb3_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00003_nrcb4_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00003_nrcb4/jw01448008001_08101_00003_nrcb4_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08101_00003_nrcblong_i2d.fits</td>
                <td>JWST/jw01448008001_08101_00003_nrcblong/jw01448008001_08101_00003_nrcblong_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08201_00001_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_08201_00001_mirimage/jw01448008001_08201_00001_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08201_00002_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_08201_00002_mirimage/jw01448008001_08201_00002_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:JWST/product/jw01448008001_08201_00003_mirimage_i2d.fits</td>
                <td>JWST/jw01448008001_08201_00003_mirimage/jw01448008001_08201_00003_mirimage_i2d.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
        </table>
    </body>
</html>

EOT

# Download Product Files:



cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00003_nrcb3/jw01448002001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00003_nrcb3/jw01448002001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00003_nrcb4/jw01448002001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00003_nrcb4/jw01448002001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00003_nrcblong/jw01448002001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00003_nrcblong/jw01448002001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02201_00001_mirimage/jw01448002001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02201_00001_mirimage/jw01448002001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02201_00002_mirimage/jw01448002001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02201_00002_mirimage/jw01448002001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02201_00003_mirimage/jw01448002001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02201_00003_mirimage/jw01448002001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00001_nrcb1/jw01448002001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00001_nrcb1/jw01448002001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00001_nrcb2/jw01448002001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00001_nrcb2/jw01448002001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00001_nrcb3/jw01448002001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00001_nrcb3/jw01448002001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00001_nrcb4/jw01448002001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00001_nrcb4/jw01448002001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00001_nrcblong/jw01448002001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00001_nrcblong/jw01448002001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00002_nrcb1/jw01448002001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00002_nrcb1/jw01448002001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00002_nrcb2/jw01448002001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00002_nrcb2/jw01448002001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00002_nrcb3/jw01448002001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00002_nrcb3/jw01448002001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00002_nrcb4/jw01448002001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00002_nrcb4/jw01448002001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00002_nrcblong/jw01448002001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00002_nrcblong/jw01448002001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00003_nrcb1/jw01448002001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00003_nrcb1/jw01448002001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00003_nrcb2/jw01448002001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00003_nrcb2/jw01448002001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00003_nrcb3/jw01448002001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00003_nrcb3/jw01448002001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00003_nrcb4/jw01448002001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00003_nrcb4/jw01448002001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04101_00003_nrcblong/jw01448002001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04101_00003_nrcblong/jw01448002001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04201_00001_mirimage/jw01448002001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04201_00001_mirimage/jw01448002001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04201_00002_mirimage/jw01448002001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04201_00002_mirimage/jw01448002001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_04201_00003_mirimage/jw01448002001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_04201_00003_mirimage/jw01448002001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00001_nrcb1/jw01448002001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00001_nrcb1/jw01448002001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00001_nrcb2/jw01448002001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00001_nrcb2/jw01448002001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00001_nrcb3/jw01448002001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00001_nrcb3/jw01448002001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00001_nrcb4/jw01448002001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00001_nrcb4/jw01448002001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00001_nrcblong/jw01448002001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00001_nrcblong/jw01448002001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00002_nrcb1/jw01448002001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00002_nrcb1/jw01448002001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00002_nrcb2/jw01448002001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00002_nrcb2/jw01448002001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00002_nrcb3/jw01448002001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00002_nrcb3/jw01448002001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00002_nrcb4/jw01448002001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00002_nrcb4/jw01448002001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00002_nrcblong/jw01448002001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00002_nrcblong/jw01448002001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00003_nrcb1/jw01448002001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00003_nrcb1/jw01448002001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00003_nrcb2/jw01448002001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00003_nrcb2/jw01448002001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00003_nrcb3/jw01448002001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00003_nrcb3/jw01448002001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00003_nrcb4/jw01448002001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00003_nrcb4/jw01448002001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06101_00003_nrcblong/jw01448002001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06101_00003_nrcblong/jw01448002001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06201_00001_mirimage/jw01448002001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06201_00001_mirimage/jw01448002001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06201_00002_mirimage/jw01448002001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06201_00002_mirimage/jw01448002001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_06201_00003_mirimage/jw01448002001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_06201_00003_mirimage/jw01448002001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00001_nrcb1/jw01448002001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00001_nrcb1/jw01448002001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00001_nrcb2/jw01448002001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00001_nrcb2/jw01448002001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00001_nrcb3/jw01448002001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00001_nrcb3/jw01448002001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00001_nrcb4/jw01448002001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00001_nrcb4/jw01448002001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00001_nrcblong/jw01448002001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00001_nrcblong/jw01448002001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00002_nrcb1/jw01448002001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00002_nrcb1/jw01448002001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00002_nrcb2/jw01448002001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00002_nrcb2/jw01448002001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00002_nrcb3/jw01448002001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00002_nrcb3/jw01448002001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00002_nrcb4/jw01448002001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00002_nrcb4/jw01448002001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00002_nrcblong/jw01448002001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00002_nrcblong/jw01448002001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00003_nrcb1/jw01448002001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00003_nrcb1/jw01448002001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00003_nrcb2/jw01448002001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00003_nrcb2/jw01448002001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00003_nrcb3/jw01448002001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00003_nrcb3/jw01448002001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00003_nrcb4/jw01448002001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00003_nrcb4/jw01448002001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08101_00003_nrcblong/jw01448002001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08101_00003_nrcblong/jw01448002001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08201_00001_mirimage/jw01448002001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08201_00001_mirimage/jw01448002001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08201_00002_mirimage/jw01448002001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08201_00002_mirimage/jw01448002001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_08201_00003_mirimage/jw01448002001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_08201_00003_mirimage/jw01448002001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00001_nrcb1/jw01448003001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00001_nrcb1/jw01448003001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00001_nrcb2/jw01448003001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00001_nrcb2/jw01448003001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00001_nrcb3/jw01448003001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00001_nrcb3/jw01448003001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00001_nrcb4/jw01448003001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00001_nrcb4/jw01448003001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00001_nrcblong/jw01448003001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00001_nrcblong/jw01448003001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00002_nrcb1/jw01448003001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00002_nrcb1/jw01448003001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00002_nrcb2/jw01448003001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00002_nrcb2/jw01448003001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00002_nrcb3/jw01448003001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00002_nrcb3/jw01448003001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00002_nrcb4/jw01448003001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00002_nrcb4/jw01448003001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00002_nrcblong/jw01448003001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00002_nrcblong/jw01448003001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00003_nrcb1/jw01448003001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00003_nrcb1/jw01448003001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00003_nrcb2/jw01448003001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00003_nrcb2/jw01448003001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00003_nrcb3/jw01448003001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00003_nrcb3/jw01448003001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00003_nrcb4/jw01448003001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00003_nrcb4/jw01448003001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02101_00003_nrcblong/jw01448003001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02101_00003_nrcblong/jw01448003001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02201_00001_mirimage/jw01448003001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02201_00001_mirimage/jw01448003001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02201_00002_mirimage/jw01448003001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02201_00002_mirimage/jw01448003001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_02201_00003_mirimage/jw01448003001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_02201_00003_mirimage/jw01448003001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00001_nrcb1/jw01448003001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00001_nrcb1/jw01448003001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00001_nrcb2/jw01448003001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00001_nrcb2/jw01448003001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00001_nrcb3/jw01448003001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00001_nrcb3/jw01448003001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00001_nrcb4/jw01448003001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00001_nrcb4/jw01448003001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00001_nrcblong/jw01448003001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00001_nrcblong/jw01448003001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00002_nrcb1/jw01448003001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00002_nrcb1/jw01448003001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00002_nrcb2/jw01448003001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00002_nrcb2/jw01448003001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00002_nrcb3/jw01448003001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00002_nrcb3/jw01448003001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00002_nrcb4/jw01448003001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00002_nrcb4/jw01448003001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00002_nrcblong/jw01448003001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00002_nrcblong/jw01448003001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00003_nrcb1/jw01448003001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00003_nrcb1/jw01448003001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00003_nrcb2/jw01448003001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00003_nrcb2/jw01448003001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00003_nrcb3/jw01448003001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00003_nrcb3/jw01448003001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00003_nrcb4/jw01448003001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00003_nrcb4/jw01448003001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04101_00003_nrcblong/jw01448003001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04101_00003_nrcblong/jw01448003001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04201_00001_mirimage/jw01448003001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04201_00001_mirimage/jw01448003001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04201_00002_mirimage/jw01448003001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04201_00002_mirimage/jw01448003001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_04201_00003_mirimage/jw01448003001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_04201_00003_mirimage/jw01448003001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00001_nrcb1/jw01448003001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00001_nrcb1/jw01448003001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00001_nrcb2/jw01448003001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00001_nrcb2/jw01448003001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00001_nrcb3/jw01448003001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00001_nrcb3/jw01448003001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00001_nrcb4/jw01448003001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00001_nrcb4/jw01448003001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00003_nrcblong/jw01448004001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00003_nrcblong/jw01448004001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08201_00001_mirimage/jw01448004001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08201_00001_mirimage/jw01448004001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08201_00002_mirimage/jw01448004001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08201_00002_mirimage/jw01448004001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08201_00003_mirimage/jw01448004001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08201_00003_mirimage/jw01448004001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00001_nrcb1/jw01448005001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00001_nrcb1/jw01448005001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00001_nrcb2/jw01448005001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00001_nrcb2/jw01448005001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00001_nrcb3/jw01448005001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00001_nrcb3/jw01448005001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00001_nrcb4/jw01448005001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00001_nrcb4/jw01448005001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00001_nrcblong/jw01448005001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00001_nrcblong/jw01448005001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00002_nrcb1/jw01448005001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00002_nrcb1/jw01448005001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00002_nrcb2/jw01448005001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00002_nrcb2/jw01448005001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00002_nrcb3/jw01448005001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00002_nrcb3/jw01448005001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00002_nrcb4/jw01448005001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00002_nrcb4/jw01448005001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00002_nrcblong/jw01448005001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00002_nrcblong/jw01448005001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00003_nrcb1/jw01448005001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00003_nrcb1/jw01448005001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00003_nrcb2/jw01448005001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00003_nrcb2/jw01448005001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00003_nrcb3/jw01448005001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00003_nrcb3/jw01448005001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00003_nrcb4/jw01448005001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00003_nrcb4/jw01448005001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02101_00003_nrcblong/jw01448005001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02101_00003_nrcblong/jw01448005001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02201_00001_mirimage/jw01448005001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02201_00001_mirimage/jw01448005001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02201_00002_mirimage/jw01448005001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02201_00002_mirimage/jw01448005001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_02201_00003_mirimage/jw01448005001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_02201_00003_mirimage/jw01448005001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00001_nrcb1/jw01448005001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00001_nrcb1/jw01448005001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00001_nrcb2/jw01448005001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00001_nrcb2/jw01448005001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00001_nrcb3/jw01448005001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00001_nrcb3/jw01448005001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00001_nrcb4/jw01448005001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00001_nrcb4/jw01448005001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00001_nrcblong/jw01448005001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00001_nrcblong/jw01448005001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00002_nrcb1/jw01448005001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00002_nrcb1/jw01448005001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00002_nrcb2/jw01448005001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00002_nrcb2/jw01448005001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00002_nrcb3/jw01448005001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00002_nrcb3/jw01448005001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00002_nrcb4/jw01448005001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00002_nrcb4/jw01448005001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00002_nrcblong/jw01448005001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00002_nrcblong/jw01448005001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00003_nrcb1/jw01448005001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00003_nrcb1/jw01448005001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00003_nrcb2/jw01448005001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00003_nrcb2/jw01448005001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00003_nrcb3/jw01448005001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00003_nrcb3/jw01448005001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00003_nrcb4/jw01448005001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00003_nrcb4/jw01448005001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04101_00003_nrcblong/jw01448005001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04101_00003_nrcblong/jw01448005001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04201_00001_mirimage/jw01448005001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04201_00001_mirimage/jw01448005001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04201_00002_mirimage/jw01448005001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04201_00002_mirimage/jw01448005001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_04201_00003_mirimage/jw01448005001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_04201_00003_mirimage/jw01448005001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00001_nrcb1/jw01448005001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00001_nrcb1/jw01448005001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00001_nrcb2/jw01448005001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00001_nrcb2/jw01448005001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00001_nrcb3/jw01448005001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00001_nrcb3/jw01448005001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00001_nrcb4/jw01448005001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00001_nrcb4/jw01448005001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00001_nrcblong/jw01448005001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00001_nrcblong/jw01448005001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00002_nrcb1/jw01448005001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00002_nrcb1/jw01448005001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00002_nrcb2/jw01448005001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00002_nrcb2/jw01448005001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00002_nrcb3/jw01448005001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00002_nrcb3/jw01448005001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00002_nrcb4/jw01448005001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00002_nrcb4/jw01448005001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00002_nrcblong/jw01448005001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00002_nrcblong/jw01448005001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00003_nrcb1/jw01448005001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00003_nrcb1/jw01448005001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00003_nrcb2/jw01448005001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00003_nrcb2/jw01448005001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00003_nrcb3/jw01448005001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00003_nrcb3/jw01448005001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00003_nrcb4/jw01448005001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00003_nrcb4/jw01448005001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06101_00003_nrcblong/jw01448005001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06101_00003_nrcblong/jw01448005001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06201_00001_mirimage/jw01448005001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06201_00001_mirimage/jw01448005001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06201_00002_mirimage/jw01448005001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06201_00002_mirimage/jw01448005001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_06201_00003_mirimage/jw01448005001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_06201_00003_mirimage/jw01448005001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00001_nrcb1/jw01448005001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00001_nrcb1/jw01448005001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00001_nrcb2/jw01448005001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00001_nrcb2/jw01448005001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00001_nrcb3/jw01448005001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00001_nrcb3/jw01448005001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00001_nrcb4/jw01448005001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00001_nrcb4/jw01448005001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00001_nrcblong/jw01448005001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00001_nrcblong/jw01448005001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00002_nrcb1/jw01448005001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00002_nrcb1/jw01448005001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00002_nrcb2/jw01448005001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00002_nrcb2/jw01448005001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00002_nrcb3/jw01448005001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00002_nrcb3/jw01448005001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00002_nrcb4/jw01448005001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00002_nrcb4/jw01448005001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00002_nrcblong/jw01448005001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00002_nrcblong/jw01448005001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00003_nrcb1/jw01448005001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00003_nrcb1/jw01448005001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00003_nrcb2/jw01448005001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00003_nrcb2/jw01448005001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00003_nrcb3/jw01448005001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00003_nrcb3/jw01448005001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00003_nrcb4/jw01448005001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00003_nrcb4/jw01448005001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08101_00003_nrcblong/jw01448005001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08101_00003_nrcblong/jw01448005001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08201_00001_mirimage/jw01448005001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08201_00001_mirimage/jw01448005001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08201_00002_mirimage/jw01448005001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08201_00002_mirimage/jw01448005001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448005001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448005001_08201_00003_mirimage/jw01448005001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448005001_08201_00003_mirimage/jw01448005001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448005001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00001_nrcb1/jw01448006001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00001_nrcb1/jw01448006001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00001_nrcb2/jw01448006001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00001_nrcb2/jw01448006001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00001_nrcb3/jw01448006001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00001_nrcb3/jw01448006001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00001_nrcb4/jw01448006001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00001_nrcb4/jw01448006001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00001_nrcblong/jw01448006001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00001_nrcblong/jw01448006001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00002_nrcb1/jw01448006001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00002_nrcb1/jw01448006001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00002_nrcb2/jw01448006001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00002_nrcb2/jw01448006001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00002_nrcb3/jw01448006001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00002_nrcb3/jw01448006001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00002_nrcb4/jw01448006001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00002_nrcb4/jw01448006001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00002_nrcblong/jw01448006001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00002_nrcblong/jw01448006001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00003_nrcb1/jw01448006001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00003_nrcb1/jw01448006001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00003_nrcb2/jw01448006001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00003_nrcb2/jw01448006001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00003_nrcb3/jw01448006001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00003_nrcb3/jw01448006001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00003_nrcb4/jw01448006001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00003_nrcb4/jw01448006001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02101_00003_nrcblong/jw01448006001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02101_00003_nrcblong/jw01448006001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02201_00001_mirimage/jw01448006001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02201_00001_mirimage/jw01448006001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02201_00002_mirimage/jw01448006001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02201_00002_mirimage/jw01448006001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_02201_00003_mirimage/jw01448006001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_02201_00003_mirimage/jw01448006001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00001_nrcb1/jw01448006001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00001_nrcb1/jw01448006001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00001_nrcb2/jw01448006001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00001_nrcb2/jw01448006001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00001_nrcb3/jw01448006001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00001_nrcb3/jw01448006001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00001_nrcb4/jw01448006001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00001_nrcb4/jw01448006001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00001_nrcblong/jw01448006001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00001_nrcblong/jw01448006001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00002_nrcb1/jw01448006001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00002_nrcb1/jw01448006001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00002_nrcb2/jw01448006001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00002_nrcb2/jw01448006001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00002_nrcb3/jw01448006001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00002_nrcb3/jw01448006001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00002_nrcb4/jw01448006001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00002_nrcb4/jw01448006001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00002_nrcblong/jw01448006001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00002_nrcblong/jw01448006001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00003_nrcb1/jw01448006001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00003_nrcb1/jw01448006001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00003_nrcb2/jw01448006001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00003_nrcb2/jw01448006001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00003_nrcb3/jw01448006001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00003_nrcb3/jw01448006001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00003_nrcb4/jw01448006001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00003_nrcb4/jw01448006001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04101_00003_nrcblong/jw01448006001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04101_00003_nrcblong/jw01448006001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04201_00001_mirimage/jw01448006001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04201_00001_mirimage/jw01448006001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04201_00002_mirimage/jw01448006001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04201_00002_mirimage/jw01448006001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_04201_00003_mirimage/jw01448006001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_04201_00003_mirimage/jw01448006001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00001_nrcb1/jw01448006001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00001_nrcb1/jw01448006001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00001_nrcb2/jw01448006001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00001_nrcb2/jw01448006001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00001_nrcb3/jw01448006001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00001_nrcb3/jw01448006001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00001_nrcb4/jw01448006001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00001_nrcb4/jw01448006001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00001_nrcblong/jw01448006001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00001_nrcblong/jw01448006001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00002_nrcb1/jw01448006001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00002_nrcb1/jw01448006001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00002_nrcb2/jw01448006001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00002_nrcb2/jw01448006001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00002_nrcb3/jw01448006001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00002_nrcb3/jw01448006001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00002_nrcb4/jw01448006001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00002_nrcb4/jw01448006001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00002_nrcblong/jw01448006001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00002_nrcblong/jw01448006001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00003_nrcb1/jw01448006001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00003_nrcb1/jw01448006001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00003_nrcb2/jw01448006001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00003_nrcb2/jw01448006001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00003_nrcb3/jw01448006001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00003_nrcb3/jw01448006001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00003_nrcb4/jw01448006001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00003_nrcb4/jw01448006001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06101_00003_nrcblong/jw01448006001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06101_00003_nrcblong/jw01448006001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06201_00001_mirimage/jw01448006001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06201_00001_mirimage/jw01448006001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06201_00002_mirimage/jw01448006001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06201_00002_mirimage/jw01448006001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_06201_00003_mirimage/jw01448006001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_06201_00003_mirimage/jw01448006001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00001_nrcb1/jw01448006001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00001_nrcb1/jw01448006001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00001_nrcb2/jw01448006001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00001_nrcb2/jw01448006001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00001_nrcb3/jw01448006001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00001_nrcb3/jw01448006001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00001_nrcb4/jw01448006001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00001_nrcb4/jw01448006001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00001_nrcblong/jw01448006001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00001_nrcblong/jw01448006001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00002_nrcb1/jw01448006001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00002_nrcb1/jw01448006001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00002_nrcb2/jw01448006001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00002_nrcb2/jw01448006001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00002_nrcb3/jw01448006001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00002_nrcb3/jw01448006001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00002_nrcb4/jw01448006001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00002_nrcb4/jw01448006001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00002_nrcblong/jw01448006001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00002_nrcblong/jw01448006001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00003_nrcb1/jw01448006001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00003_nrcb1/jw01448006001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00003_nrcb2/jw01448006001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00003_nrcb2/jw01448006001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00003_nrcb3/jw01448006001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00003_nrcb3/jw01448006001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00003_nrcb4/jw01448006001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00003_nrcb4/jw01448006001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08101_00003_nrcblong/jw01448006001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08101_00003_nrcblong/jw01448006001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08201_00001_mirimage/jw01448006001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08201_00001_mirimage/jw01448006001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08201_00002_mirimage/jw01448006001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08201_00002_mirimage/jw01448006001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448006001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448006001_08201_00003_mirimage/jw01448006001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448006001_08201_00003_mirimage/jw01448006001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448006001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00001_nrcb1/jw01448007001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00001_nrcb1/jw01448007001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00001_nrcb2/jw01448007001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00001_nrcb2/jw01448007001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00001_nrcb3/jw01448007001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00001_nrcb3/jw01448007001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00001_nrcb4/jw01448007001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00001_nrcb4/jw01448007001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00001_nrcblong/jw01448007001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00001_nrcblong/jw01448007001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00002_nrcb1/jw01448007001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00002_nrcb1/jw01448007001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00002_nrcb2/jw01448007001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00002_nrcb2/jw01448007001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00002_nrcb3/jw01448007001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00002_nrcb3/jw01448007001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00002_nrcb4/jw01448007001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00002_nrcb4/jw01448007001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00002_nrcblong/jw01448007001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00002_nrcblong/jw01448007001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00003_nrcb1/jw01448007001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00003_nrcb1/jw01448007001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00003_nrcb2/jw01448007001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00003_nrcb2/jw01448007001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00003_nrcb3/jw01448007001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00003_nrcb3/jw01448007001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00003_nrcb4/jw01448007001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00003_nrcb4/jw01448007001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02101_00003_nrcblong/jw01448007001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02101_00003_nrcblong/jw01448007001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02201_00001_mirimage/jw01448007001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02201_00001_mirimage/jw01448007001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02201_00002_mirimage/jw01448007001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02201_00002_mirimage/jw01448007001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_02201_00003_mirimage/jw01448007001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_02201_00003_mirimage/jw01448007001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00001_nrcb1/jw01448007001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00001_nrcb1/jw01448007001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00001_nrcb2/jw01448007001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00001_nrcb2/jw01448007001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00001_nrcb3/jw01448007001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00001_nrcb3/jw01448007001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00001_nrcb4/jw01448007001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00001_nrcb4/jw01448007001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00001_nrcblong/jw01448007001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00001_nrcblong/jw01448007001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00002_nrcb1/jw01448007001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00002_nrcb1/jw01448007001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00002_nrcb2/jw01448007001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00002_nrcb2/jw01448007001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00002_nrcb3/jw01448007001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00002_nrcb3/jw01448007001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00002_nrcb4/jw01448007001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00002_nrcb4/jw01448007001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00002_nrcblong/jw01448007001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00002_nrcblong/jw01448007001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00003_nrcb1/jw01448007001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00003_nrcb1/jw01448007001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00003_nrcb2/jw01448007001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00003_nrcb2/jw01448007001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00003_nrcb3/jw01448007001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00003_nrcb3/jw01448007001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00003_nrcb4/jw01448007001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00003_nrcb4/jw01448007001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04101_00003_nrcblong/jw01448007001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04101_00003_nrcblong/jw01448007001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04201_00001_mirimage/jw01448007001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04201_00001_mirimage/jw01448007001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04201_00002_mirimage/jw01448007001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04201_00002_mirimage/jw01448007001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_04201_00003_mirimage/jw01448007001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_04201_00003_mirimage/jw01448007001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00001_nrcb1/jw01448007001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00001_nrcb1/jw01448007001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00001_nrcb2/jw01448007001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00001_nrcb2/jw01448007001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00001_nrcb3/jw01448007001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00001_nrcb3/jw01448007001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00001_nrcb4/jw01448007001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00001_nrcb4/jw01448007001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00001_nrcblong/jw01448007001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00001_nrcblong/jw01448007001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00002_nrcb1/jw01448007001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00002_nrcb1/jw01448007001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00002_nrcb2/jw01448007001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00002_nrcb2/jw01448007001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00002_nrcb3/jw01448007001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00002_nrcb3/jw01448007001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00002_nrcb4/jw01448007001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00002_nrcb4/jw01448007001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00002_nrcblong/jw01448007001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00002_nrcblong/jw01448007001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00003_nrcb1/jw01448007001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00003_nrcb1/jw01448007001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00003_nrcb2/jw01448007001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00003_nrcb2/jw01448007001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00003_nrcb3/jw01448007001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00003_nrcb3/jw01448007001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00003_nrcb4/jw01448007001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00003_nrcb4/jw01448007001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06101_00003_nrcblong/jw01448007001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06101_00003_nrcblong/jw01448007001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06201_00001_mirimage/jw01448007001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06201_00001_mirimage/jw01448007001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00001_nrcblong/jw01448003001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00001_nrcblong/jw01448003001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00002_nrcb1/jw01448003001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00002_nrcb1/jw01448003001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00002_nrcb2/jw01448003001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00002_nrcb2/jw01448003001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00002_nrcb3/jw01448003001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00002_nrcb3/jw01448003001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00002_nrcb4/jw01448003001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00002_nrcb4/jw01448003001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00002_nrcblong/jw01448003001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00002_nrcblong/jw01448003001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00003_nrcb1/jw01448003001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00003_nrcb1/jw01448003001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00003_nrcb2/jw01448003001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00003_nrcb2/jw01448003001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00003_nrcb3/jw01448003001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00003_nrcb3/jw01448003001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00003_nrcb4/jw01448003001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00003_nrcb4/jw01448003001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06101_00003_nrcblong/jw01448003001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06101_00003_nrcblong/jw01448003001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06201_00001_mirimage/jw01448003001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06201_00001_mirimage/jw01448003001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06201_00002_mirimage/jw01448003001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06201_00002_mirimage/jw01448003001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_06201_00003_mirimage/jw01448003001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_06201_00003_mirimage/jw01448003001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00001_nrcb1/jw01448003001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00001_nrcb1/jw01448003001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00001_nrcb2/jw01448003001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00001_nrcb2/jw01448003001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00001_nrcb3/jw01448003001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00001_nrcb3/jw01448003001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00001_nrcb4/jw01448003001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00001_nrcb4/jw01448003001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00001_nrcblong/jw01448003001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00001_nrcblong/jw01448003001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00002_nrcb1/jw01448003001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00002_nrcb1/jw01448003001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00002_nrcb2/jw01448003001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00002_nrcb2/jw01448003001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00002_nrcb3/jw01448003001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00002_nrcb3/jw01448003001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00002_nrcb4/jw01448003001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00002_nrcb4/jw01448003001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00002_nrcblong/jw01448003001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00002_nrcblong/jw01448003001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00003_nrcb1/jw01448003001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00003_nrcb1/jw01448003001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00003_nrcb2/jw01448003001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00003_nrcb2/jw01448003001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00003_nrcb3/jw01448003001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00003_nrcb3/jw01448003001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00003_nrcb4/jw01448003001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00003_nrcb4/jw01448003001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08101_00003_nrcblong/jw01448003001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08101_00003_nrcblong/jw01448003001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08201_00001_mirimage/jw01448003001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08201_00001_mirimage/jw01448003001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08201_00002_mirimage/jw01448003001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08201_00002_mirimage/jw01448003001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448003001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448003001_08201_00003_mirimage/jw01448003001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448003001_08201_00003_mirimage/jw01448003001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448003001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00001_nrcb1/jw01448004001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00001_nrcb1/jw01448004001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00001_nrcb2/jw01448004001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00001_nrcb2/jw01448004001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00001_nrcb3/jw01448004001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00001_nrcb3/jw01448004001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00001_nrcb4/jw01448004001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00001_nrcb4/jw01448004001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00001_nrcblong/jw01448004001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00001_nrcblong/jw01448004001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00002_nrcb1/jw01448004001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00002_nrcb1/jw01448004001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00002_nrcb2/jw01448004001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00002_nrcb2/jw01448004001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00002_nrcb3/jw01448004001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00002_nrcb3/jw01448004001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00002_nrcb4/jw01448004001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00002_nrcb4/jw01448004001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00002_nrcblong/jw01448004001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00002_nrcblong/jw01448004001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00003_nrcb1/jw01448004001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00003_nrcb1/jw01448004001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00003_nrcb2/jw01448004001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00003_nrcb2/jw01448004001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00003_nrcb3/jw01448004001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00003_nrcb3/jw01448004001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00003_nrcb4/jw01448004001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00003_nrcb4/jw01448004001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02101_00003_nrcblong/jw01448004001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02101_00003_nrcblong/jw01448004001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02201_00001_mirimage/jw01448004001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02201_00001_mirimage/jw01448004001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02201_00002_mirimage/jw01448004001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02201_00002_mirimage/jw01448004001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_02201_00003_mirimage/jw01448004001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_02201_00003_mirimage/jw01448004001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00001_nrcb1/jw01448004001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00001_nrcb1/jw01448004001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00001_nrcb2/jw01448004001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00001_nrcb2/jw01448004001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00001_nrcb3/jw01448004001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00001_nrcb3/jw01448004001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00001_nrcb4/jw01448004001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00001_nrcb4/jw01448004001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00001_nrcblong/jw01448004001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00001_nrcblong/jw01448004001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00002_nrcb1/jw01448004001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00002_nrcb1/jw01448004001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00002_nrcb2/jw01448004001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00002_nrcb2/jw01448004001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00002_nrcb3/jw01448004001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00002_nrcb3/jw01448004001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00002_nrcb4/jw01448004001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00002_nrcb4/jw01448004001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00002_nrcblong/jw01448004001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00002_nrcblong/jw01448004001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00003_nrcb1/jw01448004001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00003_nrcb1/jw01448004001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00003_nrcb2/jw01448004001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00003_nrcb2/jw01448004001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00003_nrcb3/jw01448004001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00003_nrcb3/jw01448004001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00003_nrcb4/jw01448004001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00003_nrcb4/jw01448004001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04101_00003_nrcblong/jw01448004001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04101_00003_nrcblong/jw01448004001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04201_00001_mirimage/jw01448004001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04201_00001_mirimage/jw01448004001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04201_00002_mirimage/jw01448004001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04201_00002_mirimage/jw01448004001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_04201_00003_mirimage/jw01448004001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_04201_00003_mirimage/jw01448004001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00001_nrcb1/jw01448004001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00001_nrcb1/jw01448004001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00001_nrcb2/jw01448004001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00001_nrcb2/jw01448004001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00001_nrcb3/jw01448004001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00001_nrcb3/jw01448004001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00001_nrcb4/jw01448004001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00001_nrcb4/jw01448004001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00001_nrcblong/jw01448004001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00001_nrcblong/jw01448004001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00002_nrcb1/jw01448004001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00002_nrcb1/jw01448004001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00002_nrcb2/jw01448004001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00002_nrcb2/jw01448004001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00002_nrcb3/jw01448004001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00002_nrcb3/jw01448004001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00002_nrcb4/jw01448004001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00002_nrcb4/jw01448004001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00002_nrcblong/jw01448004001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00002_nrcblong/jw01448004001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00003_nrcb1/jw01448004001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00003_nrcb1/jw01448004001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00003_nrcb2/jw01448004001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00003_nrcb2/jw01448004001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00003_nrcb3/jw01448004001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00003_nrcb3/jw01448004001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00003_nrcb4/jw01448004001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00003_nrcb4/jw01448004001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06101_00003_nrcblong/jw01448004001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06101_00003_nrcblong/jw01448004001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06201_00001_mirimage/jw01448004001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06201_00001_mirimage/jw01448004001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06201_00002_mirimage/jw01448004001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06201_00002_mirimage/jw01448004001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_06201_00003_mirimage/jw01448004001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_06201_00003_mirimage/jw01448004001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00001_nrcb1/jw01448004001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00001_nrcb1/jw01448004001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00001_nrcb2/jw01448004001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00001_nrcb2/jw01448004001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00001_nrcb3/jw01448004001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00001_nrcb3/jw01448004001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00001_nrcb4/jw01448004001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00001_nrcb4/jw01448004001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00001_nrcblong/jw01448004001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00001_nrcblong/jw01448004001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00002_nrcb1/jw01448004001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00002_nrcb1/jw01448004001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00002_nrcb2/jw01448004001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00002_nrcb2/jw01448004001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00002_nrcb3/jw01448004001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00002_nrcb3/jw01448004001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00002_nrcb4/jw01448004001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00002_nrcb4/jw01448004001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00002_nrcblong/jw01448004001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00002_nrcblong/jw01448004001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00003_nrcb1/jw01448004001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00003_nrcb1/jw01448004001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00003_nrcb2/jw01448004001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00003_nrcb2/jw01448004001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00003_nrcb3/jw01448004001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00003_nrcb3/jw01448004001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448004001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448004001_08101_00003_nrcb4/jw01448004001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448004001_08101_00003_nrcb4/jw01448004001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448004001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06201_00002_mirimage/jw01448007001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06201_00002_mirimage/jw01448007001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_06201_00003_mirimage/jw01448007001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_06201_00003_mirimage/jw01448007001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00001_nrcb1/jw01448007001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00001_nrcb1/jw01448007001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00001_nrcb2/jw01448007001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00001_nrcb2/jw01448007001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00001_nrcb3/jw01448007001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00001_nrcb3/jw01448007001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00001_nrcb4/jw01448007001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00001_nrcb4/jw01448007001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00001_nrcblong/jw01448007001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00001_nrcblong/jw01448007001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00002_nrcb1/jw01448007001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00002_nrcb1/jw01448007001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00002_nrcb2/jw01448007001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00002_nrcb2/jw01448007001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00002_nrcb3/jw01448007001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00002_nrcb3/jw01448007001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00002_nrcb4/jw01448007001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00002_nrcb4/jw01448007001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00002_nrcblong/jw01448007001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00002_nrcblong/jw01448007001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00003_nrcb1/jw01448007001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00003_nrcb1/jw01448007001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00003_nrcb2/jw01448007001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00003_nrcb2/jw01448007001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00003_nrcb3/jw01448007001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00003_nrcb3/jw01448007001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00003_nrcb4/jw01448007001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00003_nrcb4/jw01448007001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08101_00003_nrcblong/jw01448007001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08101_00003_nrcblong/jw01448007001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08201_00001_mirimage/jw01448007001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08201_00001_mirimage/jw01448007001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08201_00002_mirimage/jw01448007001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08201_00002_mirimage/jw01448007001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448007001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448007001_08201_00003_mirimage/jw01448007001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448007001_08201_00003_mirimage/jw01448007001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448007001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00001_nrcb1/jw01448008001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00001_nrcb1/jw01448008001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00001_nrcb2/jw01448008001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00001_nrcb2/jw01448008001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00001_nrcb3/jw01448008001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00001_nrcb3/jw01448008001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00001_nrcb4/jw01448008001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00001_nrcb4/jw01448008001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00001_nrcblong/jw01448008001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00001_nrcblong/jw01448008001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00002_nrcb1/jw01448008001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00002_nrcb1/jw01448008001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00002_nrcb2/jw01448008001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00002_nrcb2/jw01448008001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00002_nrcb3/jw01448008001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00002_nrcb3/jw01448008001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00002_nrcb4/jw01448008001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00002_nrcb4/jw01448008001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00002_nrcblong/jw01448008001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00002_nrcblong/jw01448008001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00003_nrcb1/jw01448008001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00003_nrcb1/jw01448008001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00003_nrcb2/jw01448008001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00003_nrcb2/jw01448008001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00003_nrcb3/jw01448008001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00003_nrcb3/jw01448008001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00003_nrcb4/jw01448008001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00003_nrcb4/jw01448008001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02101_00003_nrcblong/jw01448008001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02101_00003_nrcblong/jw01448008001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02201_00001_mirimage/jw01448008001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02201_00001_mirimage/jw01448008001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02201_00002_mirimage/jw01448008001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02201_00002_mirimage/jw01448008001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_02201_00003_mirimage/jw01448008001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_02201_00003_mirimage/jw01448008001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00001_nrcb1/jw01448008001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00001_nrcb1/jw01448008001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00001_nrcb2/jw01448008001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00001_nrcb2/jw01448008001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00001_nrcb3/jw01448008001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00001_nrcb3/jw01448008001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00001_nrcb4/jw01448008001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00001_nrcb4/jw01448008001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00001_nrcblong/jw01448008001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00001_nrcblong/jw01448008001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00002_nrcb1/jw01448008001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00002_nrcb1/jw01448008001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00002_nrcb2/jw01448008001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00002_nrcb2/jw01448008001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00002_nrcb3/jw01448008001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00002_nrcb3/jw01448008001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00002_nrcb4/jw01448008001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00002_nrcb4/jw01448008001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00002_nrcblong/jw01448008001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00002_nrcblong/jw01448008001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00003_nrcb1/jw01448008001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00003_nrcb1/jw01448008001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00003_nrcb2/jw01448008001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00003_nrcb2/jw01448008001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00003_nrcb3/jw01448008001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00003_nrcb3/jw01448008001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00003_nrcb4/jw01448008001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00003_nrcb4/jw01448008001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04101_00003_nrcblong/jw01448008001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04101_00003_nrcblong/jw01448008001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04201_00001_mirimage/jw01448008001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04201_00001_mirimage/jw01448008001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04201_00002_mirimage/jw01448008001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04201_00002_mirimage/jw01448008001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_04201_00003_mirimage/jw01448008001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_04201_00003_mirimage/jw01448008001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00001_nrcb1/jw01448008001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00001_nrcb1/jw01448008001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00001_nrcb2/jw01448008001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00001_nrcb2/jw01448008001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00001_nrcb3/jw01448008001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00001_nrcb3/jw01448008001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00001_nrcb4/jw01448008001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00001_nrcb4/jw01448008001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00001_nrcblong/jw01448008001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00001_nrcblong/jw01448008001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00002_nrcb1/jw01448008001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00002_nrcb1/jw01448008001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00002_nrcb2/jw01448008001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00002_nrcb2/jw01448008001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00002_nrcb3/jw01448008001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00002_nrcb3/jw01448008001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00002_nrcb4/jw01448008001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00002_nrcb4/jw01448008001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00002_nrcblong/jw01448008001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00002_nrcblong/jw01448008001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00003_nrcb1/jw01448008001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00003_nrcb1/jw01448008001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00003_nrcb2/jw01448008001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00003_nrcb2/jw01448008001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00003_nrcb3/jw01448008001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00003_nrcb3/jw01448008001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00003_nrcb4/jw01448008001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00003_nrcb4/jw01448008001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06101_00003_nrcblong/jw01448008001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06101_00003_nrcblong/jw01448008001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06201_00001_mirimage/jw01448008001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06201_00001_mirimage/jw01448008001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06201_00002_mirimage/jw01448008001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06201_00002_mirimage/jw01448008001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_06201_00003_mirimage/jw01448008001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_06201_00003_mirimage/jw01448008001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00001_nrcb1/jw01448008001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00001_nrcb1/jw01448008001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00001_nrcb2/jw01448008001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00001_nrcb2/jw01448008001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00001_nrcb3/jw01448008001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00001_nrcb3/jw01448008001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00001_nrcb4/jw01448008001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00001_nrcb4/jw01448008001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00001_nrcblong/jw01448008001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00001_nrcblong/jw01448008001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00002_nrcb1/jw01448008001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00002_nrcb1/jw01448008001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00002_nrcb2/jw01448008001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00002_nrcb2/jw01448008001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00002_nrcb3/jw01448008001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00002_nrcb3/jw01448008001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00002_nrcb4/jw01448008001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00002_nrcb4/jw01448008001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00002_nrcblong/jw01448008001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00002_nrcblong/jw01448008001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00003_nrcb1/jw01448008001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00003_nrcb1/jw01448008001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00003_nrcb2/jw01448008001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00003_nrcb2/jw01448008001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00003_nrcb3/jw01448008001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00003_nrcb3/jw01448008001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00003_nrcb4/jw01448008001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00003_nrcb4/jw01448008001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08101_00003_nrcblong/jw01448008001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08101_00003_nrcblong/jw01448008001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08201_00001_mirimage/jw01448008001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08201_00001_mirimage/jw01448008001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08201_00002_mirimage/jw01448008001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08201_00002_mirimage/jw01448008001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448008001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448008001_08201_00003_mirimage/jw01448008001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448008001_08201_00003_mirimage/jw01448008001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448008001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1001_t014_niriss_clear-f115w/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1001_t014_niriss_clear-f115w/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1001_t014_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1001_t014_niriss_clear-f200w/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1001_t014_niriss_clear-f200w/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1001_t014_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1002_t003_niriss_clear-f115w/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1002_t003_niriss_clear-f115w/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1002_t003_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1002_t003_niriss_clear-f200w/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1002_t003_niriss_clear-f200w/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1002_t003_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1003_t015_niriss_clear-f115w/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1003_t015_niriss_clear-f115w/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1003_t015_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1003_t015_niriss_clear-f200w/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1003_t015_niriss_clear-f200w/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1003_t015_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1004_t005_niriss_clear-f115w/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1004_t005_niriss_clear-f115w/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1004_t005_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1004_t005_niriss_clear-f200w/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1004_t005_niriss_clear-f200w/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1004_t005_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1005_t006_niriss_clear-f115w/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1005_t006_niriss_clear-f115w/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1005_t006_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-c1005_t006_niriss_clear-f200w/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-c1005_t006_niriss_clear-f200w/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-c1005_t006_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_miri_f1000w/jw01448-o001_t024_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_miri_f1000w/jw01448-o001_t024_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_miri_f1280w/jw01448-o001_t024_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_miri_f1280w/jw01448-o001_t024_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_miri_f560w/jw01448-o001_t024_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_miri_f560w/jw01448-o001_t024_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_miri_f770w/jw01448-o001_t024_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_miri_f770w/jw01448-o001_t024_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f070w/jw01448-o001_t024_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f070w/jw01448-o001_t024_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f115w/jw01448-o001_t024_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f115w/jw01448-o001_t024_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f150w/jw01448-o001_t024_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f150w/jw01448-o001_t024_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f200w/jw01448-o001_t024_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f200w/jw01448-o001_t024_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f277w/jw01448-o001_t024_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f277w/jw01448-o001_t024_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f356w/jw01448-o001_t024_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f356w/jw01448-o001_t024_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f444w/jw01448-o001_t024_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f444w/jw01448-o001_t024_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o001_t024_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o001_t024_nircam_clear-f480m/jw01448-o001_t024_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o001_t024_nircam_clear-f480m/jw01448-o001_t024_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o001_t024_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_miri_f1000w/jw01448-o002_t014_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_miri_f1000w/jw01448-o002_t014_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_miri_f1280w/jw01448-o002_t014_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_miri_f1280w/jw01448-o002_t014_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_miri_f560w/jw01448-o002_t014_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_miri_f560w/jw01448-o002_t014_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_miri_f770w/jw01448-o002_t014_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_miri_f770w/jw01448-o002_t014_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f070w/jw01448-o002_t014_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f070w/jw01448-o002_t014_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f115w/jw01448-o002_t014_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f115w/jw01448-o002_t014_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f150w/jw01448-o002_t014_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f150w/jw01448-o002_t014_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f200w/jw01448-o002_t014_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f200w/jw01448-o002_t014_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f277w/jw01448-o002_t014_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f277w/jw01448-o002_t014_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f356w/jw01448-o002_t014_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f356w/jw01448-o002_t014_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f444w/jw01448-o002_t014_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f444w/jw01448-o002_t014_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o002_t014_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o002_t014_nircam_clear-f480m/jw01448-o002_t014_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o002_t014_nircam_clear-f480m/jw01448-o002_t014_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o002_t014_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_miri_f1000w/jw01448-o003_t003_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_miri_f1000w/jw01448-o003_t003_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_miri_f1280w/jw01448-o003_t003_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_miri_f1280w/jw01448-o003_t003_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_miri_f560w/jw01448-o003_t003_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_miri_f560w/jw01448-o003_t003_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_miri_f770w/jw01448-o003_t003_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_miri_f770w/jw01448-o003_t003_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f070w/jw01448-o003_t003_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f070w/jw01448-o003_t003_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f115w/jw01448-o003_t003_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f115w/jw01448-o003_t003_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f150w/jw01448-o003_t003_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f150w/jw01448-o003_t003_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f200w/jw01448-o003_t003_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f200w/jw01448-o003_t003_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f277w/jw01448-o003_t003_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f277w/jw01448-o003_t003_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f356w/jw01448-o003_t003_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f356w/jw01448-o003_t003_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f444w/jw01448-o003_t003_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f444w/jw01448-o003_t003_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o003_t003_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o003_t003_nircam_clear-f480m/jw01448-o003_t003_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o003_t003_nircam_clear-f480m/jw01448-o003_t003_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o003_t003_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_miri_f1000w/jw01448-o004_t015_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_miri_f1000w/jw01448-o004_t015_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_miri_f1280w/jw01448-o004_t015_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_miri_f1280w/jw01448-o004_t015_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_miri_f560w/jw01448-o004_t015_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_miri_f560w/jw01448-o004_t015_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_miri_f770w/jw01448-o004_t015_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_miri_f770w/jw01448-o004_t015_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f070w/jw01448-o004_t015_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f070w/jw01448-o004_t015_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f115w/jw01448-o004_t015_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f115w/jw01448-o004_t015_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f150w/jw01448-o004_t015_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f150w/jw01448-o004_t015_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f200w/jw01448-o004_t015_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f200w/jw01448-o004_t015_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f277w/jw01448-o004_t015_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f277w/jw01448-o004_t015_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f356w/jw01448-o004_t015_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f356w/jw01448-o004_t015_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f444w/jw01448-o004_t015_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f444w/jw01448-o004_t015_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o004_t015_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o004_t015_nircam_clear-f480m/jw01448-o004_t015_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o004_t015_nircam_clear-f480m/jw01448-o004_t015_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o004_t015_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_miri_f1000w/jw01448-o005_t005_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_miri_f1000w/jw01448-o005_t005_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_miri_f1280w/jw01448-o005_t005_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_miri_f1280w/jw01448-o005_t005_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_miri_f560w/jw01448-o005_t005_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_miri_f560w/jw01448-o005_t005_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_miri_f770w/jw01448-o005_t005_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_miri_f770w/jw01448-o005_t005_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f070w/jw01448-o005_t005_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f070w/jw01448-o005_t005_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f115w/jw01448-o005_t005_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f115w/jw01448-o005_t005_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f150w/jw01448-o005_t005_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f150w/jw01448-o005_t005_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f200w/jw01448-o005_t005_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f200w/jw01448-o005_t005_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f277w/jw01448-o005_t005_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f277w/jw01448-o005_t005_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f356w/jw01448-o005_t005_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f356w/jw01448-o005_t005_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f444w/jw01448-o005_t005_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f444w/jw01448-o005_t005_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o005_t005_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o005_t005_nircam_clear-f480m/jw01448-o005_t005_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o005_t005_nircam_clear-f480m/jw01448-o005_t005_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o005_t005_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_miri_f1000w/jw01448-o006_t006_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_miri_f1000w/jw01448-o006_t006_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_miri_f1280w/jw01448-o006_t006_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_miri_f1280w/jw01448-o006_t006_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_miri_f560w/jw01448-o006_t006_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_miri_f560w/jw01448-o006_t006_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_miri_f770w/jw01448-o006_t006_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_miri_f770w/jw01448-o006_t006_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f070w/jw01448-o006_t006_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f070w/jw01448-o006_t006_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f115w/jw01448-o006_t006_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f115w/jw01448-o006_t006_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f150w/jw01448-o006_t006_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f150w/jw01448-o006_t006_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f200w/jw01448-o006_t006_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f200w/jw01448-o006_t006_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f277w/jw01448-o006_t006_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f277w/jw01448-o006_t006_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f356w/jw01448-o006_t006_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f356w/jw01448-o006_t006_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f444w/jw01448-o006_t006_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f444w/jw01448-o006_t006_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o006_t006_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o006_t006_nircam_clear-f480m/jw01448-o006_t006_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o006_t006_nircam_clear-f480m/jw01448-o006_t006_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o006_t006_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_miri_f1000w/jw01448-o007_t018_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_miri_f1000w/jw01448-o007_t018_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_miri_f1280w/jw01448-o007_t018_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_miri_f1280w/jw01448-o007_t018_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_miri_f560w/jw01448-o007_t018_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_miri_f560w/jw01448-o007_t018_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_miri_f770w/jw01448-o007_t018_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_miri_f770w/jw01448-o007_t018_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f070w/jw01448-o007_t018_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f070w/jw01448-o007_t018_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f115w/jw01448-o007_t018_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f115w/jw01448-o007_t018_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f150w/jw01448-o007_t018_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f150w/jw01448-o007_t018_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f200w/jw01448-o007_t018_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f200w/jw01448-o007_t018_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f277w/jw01448-o007_t018_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f277w/jw01448-o007_t018_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f356w/jw01448-o007_t018_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f356w/jw01448-o007_t018_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f444w/jw01448-o007_t018_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f444w/jw01448-o007_t018_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o007_t018_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o007_t018_nircam_clear-f480m/jw01448-o007_t018_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o007_t018_nircam_clear-f480m/jw01448-o007_t018_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o007_t018_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_miri_f1000w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_miri_f1000w/jw01448-o008_t016_miri_f1000w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_miri_f1000w/jw01448-o008_t016_miri_f1000w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_miri_f1000w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_miri_f1280w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_miri_f1280w/jw01448-o008_t016_miri_f1280w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_miri_f1280w/jw01448-o008_t016_miri_f1280w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_miri_f1280w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_miri_f560w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_miri_f560w/jw01448-o008_t016_miri_f560w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_miri_f560w/jw01448-o008_t016_miri_f560w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_miri_f560w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_miri_f770w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_miri_f770w/jw01448-o008_t016_miri_f770w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_miri_f770w/jw01448-o008_t016_miri_f770w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_miri_f770w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f070w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f070w/jw01448-o008_t016_nircam_clear-f070w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f070w/jw01448-o008_t016_nircam_clear-f070w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f070w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f115w/jw01448-o008_t016_nircam_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f115w/jw01448-o008_t016_nircam_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f150w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f150w/jw01448-o008_t016_nircam_clear-f150w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f150w/jw01448-o008_t016_nircam_clear-f150w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f150w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f200w/jw01448-o008_t016_nircam_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f200w/jw01448-o008_t016_nircam_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f277w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f277w/jw01448-o008_t016_nircam_clear-f277w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f277w/jw01448-o008_t016_nircam_clear-f277w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f277w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f356w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f356w/jw01448-o008_t016_nircam_clear-f356w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f356w/jw01448-o008_t016_nircam_clear-f356w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f356w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f444w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f444w/jw01448-o008_t016_nircam_clear-f444w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f444w/jw01448-o008_t016_nircam_clear-f444w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f444w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o008_t016_nircam_clear-f480m_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o008_t016_nircam_clear-f480m/jw01448-o008_t016_nircam_clear-f480m_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o008_t016_nircam_clear-f480m/jw01448-o008_t016_nircam_clear-f480m_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o008_t016_nircam_clear-f480m_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o012_t014_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o012_t014_niriss_clear-f115w/jw01448-o012_t014_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o012_t014_niriss_clear-f115w/jw01448-o012_t014_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o012_t014_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o012_t014_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o012_t014_niriss_clear-f200w/jw01448-o012_t014_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o012_t014_niriss_clear-f200w/jw01448-o012_t014_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o012_t014_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o013_t003_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o013_t003_niriss_clear-f115w/jw01448-o013_t003_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o013_t003_niriss_clear-f115w/jw01448-o013_t003_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o013_t003_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o013_t003_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o013_t003_niriss_clear-f200w/jw01448-o013_t003_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o013_t003_niriss_clear-f200w/jw01448-o013_t003_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o013_t003_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o014_t015_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o014_t015_niriss_clear-f115w/jw01448-o014_t015_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o014_t015_niriss_clear-f115w/jw01448-o014_t015_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o014_t015_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o014_t015_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o014_t015_niriss_clear-f200w/jw01448-o014_t015_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o014_t015_niriss_clear-f200w/jw01448-o014_t015_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o014_t015_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o015_t005_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o015_t005_niriss_clear-f115w/jw01448-o015_t005_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o015_t005_niriss_clear-f115w/jw01448-o015_t005_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o015_t005_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o015_t005_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o015_t005_niriss_clear-f200w/jw01448-o015_t005_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o015_t005_niriss_clear-f200w/jw01448-o015_t005_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o015_t005_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o016_t006_niriss_clear-f115w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o016_t006_niriss_clear-f115w/jw01448-o016_t006_niriss_clear-f115w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o016_t006_niriss_clear-f115w/jw01448-o016_t006_niriss_clear-f115w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o016_t006_niriss_clear-f115w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448-o016_t006_niriss_clear-f200w_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448-o016_t006_niriss_clear-f200w/jw01448-o016_t006_niriss_clear-f200w_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448-o016_t006_niriss_clear-f200w/jw01448-o016_t006_niriss_clear-f200w_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448-o016_t006_niriss_clear-f200w_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00001_nrcb1/jw01448001001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00001_nrcb1/jw01448001001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00001_nrcb2/jw01448001001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00001_nrcb2/jw01448001001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00001_nrcb3/jw01448001001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00001_nrcb3/jw01448001001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00001_nrcb4/jw01448001001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00001_nrcb4/jw01448001001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00001_nrcblong/jw01448001001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00001_nrcblong/jw01448001001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00002_nrcb1/jw01448001001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00002_nrcb1/jw01448001001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00002_nrcb2/jw01448001001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00002_nrcb2/jw01448001001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00002_nrcb3/jw01448001001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00002_nrcb3/jw01448001001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00002_nrcb4/jw01448001001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00002_nrcb4/jw01448001001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00002_nrcblong/jw01448001001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00002_nrcblong/jw01448001001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00003_nrcb1/jw01448001001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00003_nrcb1/jw01448001001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00003_nrcb2/jw01448001001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00003_nrcb2/jw01448001001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00003_nrcb3/jw01448001001_02101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00003_nrcb3/jw01448001001_02101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00003_nrcb4/jw01448001001_02101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00003_nrcb4/jw01448001001_02101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02101_00003_nrcblong/jw01448001001_02101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02101_00003_nrcblong/jw01448001001_02101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02201_00001_mirimage/jw01448001001_02201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02201_00001_mirimage/jw01448001001_02201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02201_00002_mirimage/jw01448001001_02201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02201_00002_mirimage/jw01448001001_02201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_02201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_02201_00003_mirimage/jw01448001001_02201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_02201_00003_mirimage/jw01448001001_02201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_02201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00001_nrcb1/jw01448001001_04101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00001_nrcb1/jw01448001001_04101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00001_nrcb2/jw01448001001_04101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00001_nrcb2/jw01448001001_04101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00001_nrcb3/jw01448001001_04101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00001_nrcb3/jw01448001001_04101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00001_nrcb4/jw01448001001_04101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00001_nrcb4/jw01448001001_04101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00001_nrcblong/jw01448001001_04101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00001_nrcblong/jw01448001001_04101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00002_nrcb1/jw01448001001_04101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00002_nrcb1/jw01448001001_04101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00002_nrcb2/jw01448001001_04101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00002_nrcb2/jw01448001001_04101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00002_nrcb3/jw01448001001_04101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00002_nrcb3/jw01448001001_04101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00002_nrcb4/jw01448001001_04101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00002_nrcb4/jw01448001001_04101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00002_nrcblong/jw01448001001_04101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00002_nrcblong/jw01448001001_04101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00003_nrcb1/jw01448001001_04101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00003_nrcb1/jw01448001001_04101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00003_nrcb2/jw01448001001_04101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00003_nrcb2/jw01448001001_04101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00003_nrcb3/jw01448001001_04101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00003_nrcb3/jw01448001001_04101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00003_nrcb4/jw01448001001_04101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00003_nrcb4/jw01448001001_04101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04101_00003_nrcblong/jw01448001001_04101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04101_00003_nrcblong/jw01448001001_04101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04201_00001_mirimage/jw01448001001_04201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04201_00001_mirimage/jw01448001001_04201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04201_00002_mirimage/jw01448001001_04201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04201_00002_mirimage/jw01448001001_04201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_04201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_04201_00003_mirimage/jw01448001001_04201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_04201_00003_mirimage/jw01448001001_04201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_04201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00001_nrcb1/jw01448001001_06101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00001_nrcb1/jw01448001001_06101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00001_nrcb2/jw01448001001_06101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00001_nrcb2/jw01448001001_06101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00001_nrcb3/jw01448001001_06101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00001_nrcb3/jw01448001001_06101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00001_nrcb4/jw01448001001_06101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00001_nrcb4/jw01448001001_06101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00001_nrcblong/jw01448001001_06101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00001_nrcblong/jw01448001001_06101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00002_nrcb1/jw01448001001_06101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00002_nrcb1/jw01448001001_06101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00002_nrcb2/jw01448001001_06101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00002_nrcb2/jw01448001001_06101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00002_nrcb3/jw01448001001_06101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00002_nrcb3/jw01448001001_06101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00002_nrcb4/jw01448001001_06101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00002_nrcb4/jw01448001001_06101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00002_nrcblong/jw01448001001_06101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00002_nrcblong/jw01448001001_06101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00003_nrcb1/jw01448001001_06101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00003_nrcb1/jw01448001001_06101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00003_nrcb2/jw01448001001_06101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00003_nrcb2/jw01448001001_06101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00003_nrcb3/jw01448001001_06101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00003_nrcb3/jw01448001001_06101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00003_nrcb4/jw01448001001_06101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00003_nrcb4/jw01448001001_06101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06101_00003_nrcblong/jw01448001001_06101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06101_00003_nrcblong/jw01448001001_06101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06201_00001_mirimage/jw01448001001_06201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06201_00001_mirimage/jw01448001001_06201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06201_00002_mirimage/jw01448001001_06201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06201_00002_mirimage/jw01448001001_06201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_06201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_06201_00003_mirimage/jw01448001001_06201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_06201_00003_mirimage/jw01448001001_06201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_06201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00001_nrcb1/jw01448001001_08101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00001_nrcb1/jw01448001001_08101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00001_nrcb2/jw01448001001_08101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00001_nrcb2/jw01448001001_08101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00001_nrcb3/jw01448001001_08101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00001_nrcb3/jw01448001001_08101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00001_nrcb4/jw01448001001_08101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00001_nrcb4/jw01448001001_08101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00001_nrcblong/jw01448001001_08101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00001_nrcblong/jw01448001001_08101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00002_nrcb1/jw01448001001_08101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00002_nrcb1/jw01448001001_08101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00002_nrcb2/jw01448001001_08101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00002_nrcb2/jw01448001001_08101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00002_nrcb3/jw01448001001_08101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00002_nrcb3/jw01448001001_08101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00002_nrcb4/jw01448001001_08101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00002_nrcb4/jw01448001001_08101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00002_nrcblong/jw01448001001_08101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00002_nrcblong/jw01448001001_08101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00003_nrcb1/jw01448001001_08101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00003_nrcb1/jw01448001001_08101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00003_nrcb2/jw01448001001_08101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00003_nrcb2/jw01448001001_08101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00003_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00003_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00003_nrcb3/jw01448001001_08101_00003_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00003_nrcb3/jw01448001001_08101_00003_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00003_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00003_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00003_nrcb4/jw01448001001_08101_00003_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00003_nrcb4/jw01448001001_08101_00003_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00003_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08101_00003_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08101_00003_nrcblong/jw01448001001_08101_00003_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08101_00003_nrcblong/jw01448001001_08101_00003_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08101_00003_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08201_00001_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08201_00001_mirimage/jw01448001001_08201_00001_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08201_00001_mirimage/jw01448001001_08201_00001_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08201_00001_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08201_00002_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08201_00002_mirimage/jw01448001001_08201_00002_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08201_00002_mirimage/jw01448001001_08201_00002_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08201_00002_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448001001_08201_00003_mirimage_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448001001_08201_00003_mirimage/jw01448001001_08201_00003_mirimage_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448001001_08201_00003_mirimage/jw01448001001_08201_00003_mirimage_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448001001_08201_00003_mirimage_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00001_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00001_nrcb1/jw01448002001_02101_00001_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00001_nrcb1/jw01448002001_02101_00001_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00001_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00001_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00001_nrcb2/jw01448002001_02101_00001_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00001_nrcb2/jw01448002001_02101_00001_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00001_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00001_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00001_nrcb3/jw01448002001_02101_00001_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00001_nrcb3/jw01448002001_02101_00001_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00001_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00001_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00001_nrcb4/jw01448002001_02101_00001_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00001_nrcb4/jw01448002001_02101_00001_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00001_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00001_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00001_nrcblong/jw01448002001_02101_00001_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00001_nrcblong/jw01448002001_02101_00001_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00001_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00002_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00002_nrcb1/jw01448002001_02101_00002_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00002_nrcb1/jw01448002001_02101_00002_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00002_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00002_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00002_nrcb2/jw01448002001_02101_00002_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00002_nrcb2/jw01448002001_02101_00002_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00002_nrcb2_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00002_nrcb3_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00002_nrcb3/jw01448002001_02101_00002_nrcb3_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00002_nrcb3/jw01448002001_02101_00002_nrcb3_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00002_nrcb3_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00002_nrcb4_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00002_nrcb4/jw01448002001_02101_00002_nrcb4_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00002_nrcb4/jw01448002001_02101_00002_nrcb4_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00002_nrcb4_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00002_nrcblong_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00002_nrcblong/jw01448002001_02101_00002_nrcblong_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00002_nrcblong/jw01448002001_02101_00002_nrcblong_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00002_nrcblong_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00003_nrcb1_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00003_nrcb1/jw01448002001_02101_00003_nrcb1_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00003_nrcb1/jw01448002001_02101_00003_nrcb1_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00003_nrcb1_i2d.fits'





cat <<EOT
<<< Downloading File: mast:JWST/product/jw01448002001_02101_00003_nrcb2_i2d.fits
                  To: ${DOWNLOAD_FOLDER}/JWST/jw01448002001_02101_00003_nrcb2/jw01448002001_02101_00003_nrcb2_i2d.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/JWST/jw01448002001_02101_00003_nrcb2/jw01448002001_02101_00003_nrcb2_i2d.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2022-08-31T0910.sh&uri=mast:JWST/product/jw01448002001_02101_00003_nrcb2_i2d.fits'




exit 0

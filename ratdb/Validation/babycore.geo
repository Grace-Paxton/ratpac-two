{
  "name": "GEO",
  "index": "world",
  "mother": "",
  "type": "sphere",
  "r_max": 4000,
  "material": "air",
  "invisible": 1,
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

{
  "name": "GEO",
  "index": "stopyellingatmeratpac",
  "mother": "",
  "type": "sphere",
  "r_min": 1200,
  "r_max": 3500,
  "material": "air",
  "invisible": 1,
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

{
  "name": "GEO",
  "index": "core",
  "mother": "world",
  "type": "sphere",
  "r_max": 200,
  "material": "air",
  "position": [0, 0, 0],
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

{
  "name": "GEO",
  "index": "moderator",
  "mother": "world",
  "type": "sphere",
  "r_min": 200,
  "r_max": 400,
  "material": "validwater",
  "position": [0, 0, 0],
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

{
  "name": "GEO",
  "index": "detector",
  "mother": "world",
  "type": "sphere",
  "r_min": 400,
  "r_max": 1200,
  "material": "scintillator",
  "position": [0, 0, 0],
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

{
  "name": "GEO",
  "index": "pmts",
  "mother": "detector",
  "type": "pmtarray",
  "pmt_model": "validPMT",
  "pmt_detector_type": "idpmt",
  "sensitive_detector": "/mydet/pmt/inner",
  "pos_table": "PMTINFO_babycore",
  "add_concentrator": 0,
  "orientation": "point",
  "orient_point": [0, 0, 0],
  "valid_begin": [0, 0],
  "valid_end": [0, 0]
}

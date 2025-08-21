// ===== Environment =====
{
  name: "GEO",
  index: "world",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "",
  type: "sphere",
  r_max: 7000.0,
  material: "air",
}

{
  name: "GEO",
  index: "maria",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "box",
  size: [3500, 3500, 100],
  position: [0, 0, -1800],
  material: "bass_shop",
  color: [1.0, 0.8, 0.0, 0.5],
}

// ===== Detector =====

// Scintillation inside 
{
  name: "GEO",
  index: "detector",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 1050,
  size_z: 1050,
  material: "validwbls",
  color: [1.0, 0.5, 0.0, 0.75],
}

// Steel Outer Case
{
  name: "GEO",
  index: "outer_case",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 1620,
  r_min: 1600, // I don't know how thick it is, this is 2 cm 
  size_z: 1676,
  material: "air",
  // Make opacity low, just enough so we know its there (don't want to hide anything inside)
}

// PMTs
{
  name: "GEO",
  index: "pmts",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "pmtarray",
  pmt_model: "validPMT",
  pmt_detector_type: "idpmt",
  sensitive_detector: "/mydet/pmt/inner",
  pos_table: "PMTINFO_eos",
  orientation: "point",
  orient_point: [0, 0, 0],
}

// ===== Reactor =====

// I don't like tubes, man
{
  name: "GEO",
  index: "fuel_tube",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 10,
  size_z: 100,
  position: [2000, 0, 0],
  material: "uranium_oxide",
  invisible: 1,
}

{
  name: "GEO",
  index: "control_tube",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 1.5,
  size_z: 250,
  position: [2000, 15, 750],
  material: "air",
  invisible: 1,
}
// Moderator (In this case water)

{
  name: "GEO",
  index: "decaywater", //just so I have a volume to put the generator in
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 500,
  position: [2000, 0, 0],
  size_z: 300,
  material: "validwater",
  color: [1.0, 0.5, 0.0, 0.75],
}

{
  name: "GEO",
  index: "water_top",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 500,
  size_z: 150,
  position: [2000, 0, 450],
  material: "validwater",
  color: [1.0, 0.5, 0.0, 0.75],
}

{
  name: "GEO",
  index: "water_bottom",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 500,
  size_z: 350,
  position: [2000, 0, -650],
  material: "validwater",
  color: [1.0, 0.5, 0.0, 0.75]
}
// Steel casing (everything is steel in the future)
{
  name: "GEO",
  index: "outer_case_body",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "world",
  type: "tube",
  r_max: 1050,
  r_min: 1000,
  size_z: 1000,
  position: [2000, 0, 0],
  material: "air",
  // Similar to steel casing in the eos detector, make this pretty transparent
  // Note: figure out how to remove the top (and the bottom of the semi circle)
}

// This is just a basic reactor, there are no PMTs

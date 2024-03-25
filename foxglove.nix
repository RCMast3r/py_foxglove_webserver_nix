{ lib
, python311Packages
, fetchPypi
}:

python311Packages.buildPythonPackage rec {
  pname = "foxglove-schemas-protobuf";
  version = "0.2.0";
  pyproject = true;
  src = fetchPypi {
    inherit pname version;
    hash = "sha256-XNsoOKuTTbTzrqRvslTFsKcQDZabDQGA8jSMupbzukE=";
  }; 
  nativeBuildInputs = [
    python311Packages.setuptools
    python311Packages.setuptools-scm
  ];
  pythonRuntimeDepsCheck = false;
  installCheck = false;
  meta = with lib; {
    description = "foxglove protobuf schemas";
    license = licenses.mit;
  };
}

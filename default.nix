{ lib, python311Packages, fetchFromGitHub, fetchgit }: 

python311Packages.buildPythonPackage rec {
  pname = "foxglove_websocket_pkg";
  version = "1.0.0";
  format="pyproject";
  src_repo = fetchgit {
    url = "https://github.com/foxglove/ws-protocol.git";
    rev = "50ed34ca7050aec35fbc45ff55d565d104e761db";  # Specify the specific commit, tag, or branch
    sha256 = "sha256-YEsX8WA7cFg881joprDQigt6XZoekyQ9XR3cwGcCDbo=";  # SHA256 hash of the source
  };

  # Extract the specific subdirectory within the repository
  propagatedBuildInputs = [  python311Packages.setuptools ];
  src = src_repo + "/python";  # Adjust the path to your desired subdirectory

  meta = with lib; {
    description = "Description of your package";
    license = licenses.mit;
  };
} 
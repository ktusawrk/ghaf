# Copyright 2022-2024 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
{
  buildPythonApplication,
  websockets,
}:
buildPythonApplication {
  pname = "gpswebsock";
  version = "1.0";

  propagatedBuildInputs = [ websockets ];

  src = ./.;
  meta = {
    description = "Point-to-point messaging server for Matrix";
    platforms = [
      "aarch64-linux"
      "x86_64-linux"
    ];
  };
}

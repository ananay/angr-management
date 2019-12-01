call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Auxiliary\Build\vcvars64.bat"
pip install pyinstaller
pip install git+https://github.com/angr/archinfo.git#egg=archinfo
pip install git+https://github.com/angr/pyvex.git#egg=pyvex
pip install git+https://github.com/angr/cle.git#egg=cle
pip install git+https://github.com/angr/claripy.git#egg=claripy
pip install git+https://github.com/angr/ailment.git#egg=ailment
pip install git+https://github.com/angr/angr.git#egg=angr
pip install -e .
python bundle.py
mkdir artifacts
REM Compress-Archive -Path .\dist\ -DestinationPath .\artifacts\angr-management-windows.zip
xcopy /E dist artifacts
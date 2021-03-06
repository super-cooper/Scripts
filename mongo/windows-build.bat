cd C:\data\mci\source-patch*

C:\Python\Python37\python.exe -m venv venv

venv\Scripts\activate

python -m pip install -r etc\dev-requirements.txt
python -m pip install -r etc\evgtest-requirements.txt

python buildscripts\scons.py --dbg=on --ssl --link-model=object  CPPPATH="c:/sasl/include c:/snmp/include" LIBPATH="c:/sasl/lib c:/snmp/lib"  CPPDEFINES="_SILENCE_CXX17_ITERATOR_BASE_CLASS_DEPRECATION_WARNING MONGO_USE_GPERFTOOLS_TCMALLOC" MONGO_GIT_HASH="unknown" MONGO_VERSION="0.0.0" --install-mode=hygienic install-all

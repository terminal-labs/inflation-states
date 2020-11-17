import sys
from setuptools import setup, find_packages

from jumper.settings import *

assert sys.version_info >= MINIMUM_PYTHON_VERSION

setup(
    name="inflation-states",
    version=VERSION,
    author="Terminal Labs",
    author_email="solutions@terminallabs.com",
    license="see LICENSE file",
    zip_safe=False,
    include_package_data=True,
    install_requires=[
        "setuptools",
        "inflation@git+https://github.com/terminal-labs/inflation.git",
    ],
    entry_points="""
        [console_scripts]
        jumper=jumper.cli:main
     """,
)

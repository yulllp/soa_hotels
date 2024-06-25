#!/usr/bin/env python
from setuptools import find_packages, setup

setup(
    name='artotel_suites_bianti',
    version='0.0.1',
    description='Store and serve user data',
    author='nameko',
    packages=find_packages(exclude=['test', 'test.*']),
    py_modules=['artotel_suites_bianti'],
    install_requires=[
        "marshmallow==2.19.2",
        "nameko==v3.0.0-rc6",
        "mysqlclient==1.4.6",  # Added MySQL client
        "mysql-connector-python==8.0.26"
    ],
    extras_require={
        'dev': [
            'pytest==4.5.0',
            'coverage==4.5.3',
            'flake8==3.7.7',
        ]
    },
    zip_safe=True,
)

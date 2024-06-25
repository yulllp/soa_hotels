#!/usr/bin/env python
from setuptools import find_packages, setup

setup(
    name='gateway3',
    version='0.0.1',
    description='Gateway',
    packages=find_packages(exclude=['test', 'test.*']),
    install_requires=[
        "marshmallow==2.19.2",
        "nameko==v3.0.0-rc6",
        "mysqlclient==1.4.6",  # Added MySQL client
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

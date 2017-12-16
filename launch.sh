#!/bin/sh
sh /microservice/get_dependencies.sh > /dependencies.iol
sh /JolieTestSuite/get_dependencies_or.sh > /dependencies_or.iol
jolie /JolieTestSuite/__clients_generator/generate_clients.ol main.ol ./test_suite/ yes
jolie /JolieTestSuite/__metadata_tools/getDependenciesPort.ol main.ol
jolie main.ol & \
jolie /JolieTestSuite/main_test_suite.ol

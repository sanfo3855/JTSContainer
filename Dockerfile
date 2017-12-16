FROM jolielang/jolie-deployer
WORKDIR /
RUN git clone https://github.com/sanfo3855/JolieTestSuite
COPY get_dependencies_or.sh /JolieTestSuite
COPY console.iol /JolieTestSuite
COPY console-imp.ol /JolieTestSuite
COPY launch.sh /
CMD ["/bin/bash","/launch.sh"]

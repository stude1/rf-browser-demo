# Robot Framework web testing demo

A short demo for showing how to write testing in business language using Gherkin format. Tests are executed in a container using Browser library.

## Prerequisites

* [Docker](https://docker.com)
* [Browser library image](https://github.com/MarketSquare/robotframework-browser/blob/main/docker/README.md) (will be downloaded automatically in the first execution)

## Usage examples
   ./runimage.sh <robot_options>
   
   ./runimage.sh efidemo.robot
   
   ./runimage.sh -i training-orders-nok -e training-payment-nok efidemo.robot


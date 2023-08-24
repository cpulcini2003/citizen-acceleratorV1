# Introduction citizen-service API

citizen-service provides you a basic sample application setup to implement your business logic. It is based on the commonly known 3-layered application architecture in where the class `CitizenController` provides the presentation layer, the `CitizenService` provides the services and business domain and finally the `CitizenRepository` provides you the capability to persist your domain.

It is leveraging Spring Boot as a technology stack, which provides:
- a stating point to implement a REST(ful) API using Spring Web annotations
- data persistence using Spring Data JPA (now PostgreSQL is supported, but other databases can be easily added)

The TAP accelerator will allow to customize configuration files in order to use an H2 in memory database created automaticall at run or a PostgreSQL database that needs to be instantiated in your k8s cluster 


## Prerequisites

In order to further develop this application the following tools needs to be setup:
- Java Development Kit (https://bell-sw.com/)
- Visual Studio Code or IntelliJ IDEA as Integrated Development Environment (IDE)





Here are some configurable parameters:

* parameter 1
* parameter 2
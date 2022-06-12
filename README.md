[TOC]



### Project

| Directory name | Desc                                                         |
| -------------- | ------------------------------------------------------------ |
| common         | some common components or tools are placed here              |
| entitys        | entity class directory                                       |
| network        | network request related                                      |
| pages          | controllers and views are grouped here by module             |
| routes         | alias routing for pages                                      |
| app_config     | application configuration related, configured by chain call  |
| main_dev       | suppose it is the application entry file in the development environment |
| main_dev       | suppose it is the application entry file in the production environment |



------



### SDK

|                 |        |
| :-------------- | ------ |
| Dart version    | 2.16.1 |
| Flutter version | 2.10.3 |



------



### App Entry

| Run configuration | File      | Arg       |
| ----------------- | --------- | --------- |
| dev_release       | main_dev  | --release |
| dev_debug         | main_dev  |           |
| prod_release      | main_prod | --release |
| prod_release      | main_prod |           |



------



### Dependences

GetX

Dio

CachedNetworkImage



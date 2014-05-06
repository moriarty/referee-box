#include "networking.h"
#include <QtNetwork>
#include <QtDeclarative>


Networking::Networking(){

    DeviceList* deviceList = new DeviceList();

    QDeclarativeView view;
    QDeclarativeContext *ctxt = view.rootContext();
    ctxt->setContextProperty("deviceListModel", deviceList);


    TCPServer tcpserver;
    tcpserver.moveToThread(&tcpserver);
    tcpserver.start();

    UDPServer udpserver;
//    udpserver.moveToThread(&udpserver);
    udpserver.run();
}

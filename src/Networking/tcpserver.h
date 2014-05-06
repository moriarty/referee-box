#ifndef TCPSERVER_H
#define TCPSERVER_H

#include <QObject>
#include <QList>
#include <QStringList>
#include <QtCore/QThread>

#include "device.h"

class QTcpServer;
class QTcpSocket;

typedef QList<Device*> DeviceList;

class TCPServer : public QThread{

    Q_OBJECT

public:
    explicit TCPServer(QObject *parent = 0);
    virtual ~TCPServer();
    void run();

private slots:
    void newConnection();
    void waitForConnection();

private:
    QTcpServer *tcpServer_;
    DeviceList *deviceList_;


    QString getLocalIPAdress();

};

#endif // TCPSERVER_H






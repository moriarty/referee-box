#ifndef DEVICE_H
#define DEVICE_H

#include <QObject>
#include <QString>
#include <QTcpSocket>
#include <QHostAddress>

class QTcpSocket;

class Device : public QObject{

    Q_OBJECT

public:
    Device(QTcpSocket *socket);
    virtual ~Device ();



private:
    QString name_;
    QString ip_;
    quint16 port_;
    QTcpSocket *socket_;

private slots:
    void readyRead ();
    void connected ();
    void disconnected ();

signals:

//    void dataReady (Device * sckt );


};

#endif // DEVICE_H

#include "device.h"

Device::Device(QTcpSocket *socket) : socket_( socket ){

    connect (socket_, SIGNAL (readyRead()), this, SLOT (readyRead()));
    connect (socket_, SIGNAL (disconnected()),this, SLOT (disconnected()));

    qDebug() << socket_->peerAddress() << socket_->peerName() << socket_->peerPort() << "connected on" << socket_->localPort();


}

Device::~Device(){
    socket_->close();
}

void Device::readyRead(){
    qDebug() << socket_->peerAddress() << socket_->peerName() << socket_->peerPort() << "sent" << socket_->readAll();
}

void Device::connected(){
    qDebug() << socket_->peerAddress() << socket_->peerName() << socket_->peerPort() << "connected on" << socket_->localPort();
}

void Device::disconnected(){
    qDebug() << socket_->peerAddress() << socket_->peerName() << socket_->peerPort() << "disconeted on" << socket_->localPort();
}

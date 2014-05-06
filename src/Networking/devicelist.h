#ifndef DEVICELIST_H
#define DEVICELIST_H

#include <QDeclarativeItem>
#include <QAbstractListModel>
#include <QStringList>

#include "device.h"


class DeviceList: public QAbstractListModel {

    Q_OBJECT
    Q_PROPERTY(int count READ rowCount NOTIFY countChanged)

public:
    DeviceList(QObject *parent = 0);

    enum AnimalRoles {NameRole = Qt::UserRole + 1};

    void addItem(const Device &device);
    void removeItem(const Device &device);
    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    Device data(const QModelIndex & index, int role = Qt::DisplayRole) const;

public slots:
    void append(const Device &device);

private:
    QList<Device*> deviceList;
};

#endif // DEVICELIST_H


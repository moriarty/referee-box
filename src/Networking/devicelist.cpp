#include "devicelist.h"

DeviceList::DeviceList(QObject *parent) : QAbstractListModel(parent){

    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    setRoleNames(roles);

}

void DeviceList::append(const Device* text){
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    deviceList.append(text);
    endInsertRows();
}

void DeviceList::removeItem(const Device* text){
    beginRemoveRows(QModelIndex(), rowCount(), rowCount());
    deviceList.removeOne(text);
    endRemoveRows();
}

int DeviceList::rowCount(const QModelIndex & parent) const{
    return deviceList.count();
}

Device* DeviceList::data(const QModelIndex & index, int role) const{
    if (index.row() < 0 || index.row() > itemList.count())
        return Device();
    return itemList.at(index.row());
}

/****************************************************************************************
 * Copyright (C) 2011 Lucien XU <sfietkonstantin@free.fr>                               *
 *                                                                                      *
 * This program is free software; you can redistribute it and/or modify it under        *
 * the terms of the GNU General Public License as published by the Free Software        *
 * Foundation; either version 3 of the License, or (at your option) any later           *
 * version.                                                                             *
 *                                                                                      *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY      *
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A      *
 * PARTICULAR PURPOSE. See the GNU General Public License for more details.             *
 *                                                                                      *
 * You should have received a copy of the GNU General Public License along with         *
 * this program.  If not, see <http://www.gnu.org/licenses/>.                           *
 ****************************************************************************************/

#ifndef QFB_IMAGELOADER_PLUGIN4_H
#define QFB_IMAGELOADER_PLUGIN4_H

/**
 * @internal
 * @file imageloader_plugin4.h
 * @short Definition of ImageLoaderPlugin4 (Qt4)
 */

#include <QtDeclarative/QDeclarativeExtensionPlugin>

/**
 * @internal
 * @short Image loader QML plugin for qfb (Qt4)
 */
class ImageLoaderPlugin4: public QDeclarativeExtensionPlugin

{
    Q_OBJECT
public:
    /**
     * @internal
     * @short Register types
     * @param uri uri used in the import.
     */
    void registerTypes(const char *uri);
};

#endif // QFB_IMAGELOADER_PLUGIN4_H


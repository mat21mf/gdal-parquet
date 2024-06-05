# Build GDAL with Parquet support.

* Taken from ./install_dev_osgeo.sh

* Ejecutar en este orden.

```console
bash setup_dependencies.sh
bash setup_tiledb.sh
bash setup_proj.sh
bash setup_geos.sh
bash setup_gdal.sh
```

* Verificar versión.

```console
ogrinfo --version
GDAL 3.9.0, released 2024/05/07
```

* Verificar debe tener formato geo parquet.

```console
ogrinfo --formats | grep -i --color 'parquet'
  Parquet -vector- (rw+v): (Geo)Parquet (*.parquet)
```

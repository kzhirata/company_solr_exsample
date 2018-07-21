# company_solr_exsample

勉強中...

## データの元ネタ
https://www.houjin-bangou.nta.go.jp/download/

## 起動

```
./start.sh
```

## スキーマとデータのimport

```
cd data
./import_schema.bash
nohup bash import.bash &

```

## indexのビルド
```
curl 'http://localhost:8983/solr/company/suggest?suggest.dictionary=mySuggester&suggest.dictionary=mySuggester2&suggest.build=true'
```

## 検索例

```
http://localhost:8983/solr/company/suggest?indent=true&suggest.dictionary=mySuggester&suggest.dictionary=mySuggester2&suggest.q=%E3%82%AD%E3%83%A4%E3%83%8E%E3%83%B3&wt=json
```


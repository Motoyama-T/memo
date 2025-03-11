# Ajax通信とは
ウェブページが非同期にサーバーと通信し、ページを再読み込みせずにデータを取得・送信できる技術です。  
  
　・**非同期通信**：ページ全体を再読み込みせずに、バックグラウンドでサーバーと通信します。  
　・**データ形式**：現在は主にJSONが使用されます。  
　・**ブラウザの更新**：サーバーから取得したデータを使って、ページの一部を動的に更新します。  
  
**XMLHttpRequestを使用したAjax通信の例**
```html
<script>
  function loadData() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/data', true);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        var data = JSON.parse(xhr.responseText);
        document.getElementById('content').innerHTML = `
          <p>Message: ${data.message}</p>
          <p>Timestamp: ${new Date(data.timestamp * 1000).toLocaleString()}</p>
        `;
      }
    };
    xhr.send();
  }

  loadData();
</script>
```
  
**`var xhr = new XMLHttpRequest();`**  
　XMLHttpRequestオブジェクトを作成します。このオブジェクトは、サーバーとの非同期通信を行うために使用されます。  
**`xhr.open('GET', '/data', true);`**  

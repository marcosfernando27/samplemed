## Detalhamento do projeto

Para este projeto, foi utilizado: Laravel 10, MySql e Vue3. O png do banco dados está na raiz do projeto com o nome de db.png

Usuário: marcosfernando7@gmail.com

senha: 123x

- Executar o comando: composer isntall e composer update
- Já foi rodado o comando: npm run build (Vue 3)
- Não criei vários componentes, utilizei html "puro" no front
- Para mitigar alguns erros no momenento de inserir um post, por exemplo, foi atribuito o try e o catch
- Para garantir a seguraça, foi incorporado o csrf no formulário de inclusão do post e para proteção da API: auth:sanctum, de modo que somente quem esteja autenticado e com um token consiga usar as Api's
- Utilização de DB::transaction é uma boa prática quando tem vários inserts em um méthodo. Podendo ocorrer o seguinte caso: inserir dados em uma tabela e outra não, nesse caso com o transaction há a possibilidade de realizar um rollback
- Backup do banca de dados: dump-samplemed_blog.sql, na raiz
- No desenho do banco de dados (db.png) criei algumas tabelas como keywords, mas no projeto não foi implementado, parte da mesma ideia de muitos para muitos no relacionamento, semelhante a tabela de posts_categories
- Foi implementado chaves estrangeiras com índices e OnCascadeDelete nas tabelas pivôs

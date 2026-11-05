# Lista de compras

App simples em React + Vite com dados persistidos no Supabase.

## Rodar localmente
1. Copie `.env.example` para `.env.local`.
2. Preencha a chave publicável/anon do projeto Supabase.
3. Rode `npm install` e `npm run dev`.

A migration em `supabase/migrations` cria a tabela e as políticas RLS iniciais.

**Atenção:** esta versão inicial compartilha uma única lista entre visitantes anônimos. Para listas privadas, implemente autenticação e políticas por usuário antes de usar com dados privados.
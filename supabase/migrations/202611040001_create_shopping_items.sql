create table if not exists public.shopping_items (
 id uuid primary key default gen_random_uuid(),
 name text not null check (char_length(trim(name)) between 1 and 200),
 quantity text not null default '',
 is_checked boolean not null default false,
 created_at timestamptz not null default now()
);
alter table public.shopping_items enable row level security;
create policy "Anyone can read shopping items" on public.shopping_items for select using (true);
create policy "Anyone can add shopping items" on public.shopping_items for insert with check (true);
create policy "Anyone can update shopping items" on public.shopping_items for update using (true) with check (true);
create policy "Anyone can delete shopping items" on public.shopping_items for delete using (true);
create index if not exists shopping_items_created_at_idx on public.shopping_items (created_at desc);
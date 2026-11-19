-- DRDL: progreso personal por estudiante.
-- Ejecuta este archivo completo en Supabase > SQL Editor > New query.
create table if not exists public.drdl_progress (
  user_id uuid not null references auth.users (id) on delete cascade,
  case_id smallint not null,
  completed boolean not null default false,
  score smallint not null default 0 check (score between 0 and 3),
  xp integer not null default 0 check (xp >= 0),
  updated_at timestamptz not null default now(),
  primary key (user_id, case_id)
);

-- This version uses ids 0 and 1. The wider range preserves earlier prototype rows.
alter table public.drdl_progress drop constraint if exists drdl_progress_case_id_check;
alter table public.drdl_progress add constraint drdl_progress_case_id_check
  check (case_id between 0 and 3);

alter table public.drdl_progress enable row level security;

-- The browser uses the public/anonymous client key. Access is granted only
-- to authenticated users, and row policies restrict each user to their own rows.
revoke all on table public.drdl_progress from anon, authenticated;
grant usage on schema public to authenticated;
grant select, insert, update on table public.drdl_progress to authenticated;

drop policy if exists "Students read their own DRDL progress" on public.drdl_progress;
create policy "Students read their own DRDL progress"
  on public.drdl_progress for select to authenticated
  using ((select auth.uid()) = user_id);

drop policy if exists "Students create their own DRDL progress" on public.drdl_progress;
create policy "Students create their own DRDL progress"
  on public.drdl_progress for insert to authenticated
  with check ((select auth.uid()) = user_id);

drop policy if exists "Students update their own DRDL progress" on public.drdl_progress;
create policy "Students update their own DRDL progress"
  on public.drdl_progress for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

-- No delete permission is granted to the browser client.

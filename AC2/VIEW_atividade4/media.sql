select id, nome , valor from produtos
where valor > (select avg(valor) from produtos);
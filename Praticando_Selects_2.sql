select datename (yy, getdate())
select datename (year, getdate())
select datename (month, getdate())
select datename (mm, getdate())

select datepart (mm, getdate())
select datepart (month, getdate())

select day(getdate())
select month(getdate())
select year(getdate())

select datediff(ww, '19-12-2001', getdate())

select dateadd(yy, 1, getdate())
select datename(month, (dateadd(month, 3, getdate())))

select isdate('27-02-2023')
select isdate('30-02-2023')

select convert(char, getdate(), 111)
select convert(char, getdate(), 113)

select round(123.3467, 3)
select round(123.3467, -3)

select power(4,2)
select power(8, 64), convert()

select ascii ('M'), ascii('AMANDA')

select char(65), char(66)

select charindex('mundo', 'ola mundo bonito', 3)
select charindex('mundo', 'ola mundo bonito', 6)

select replace (PrimeiroNome_funcionario, 'o','i') from Funcionario

select stuff('abcdef', 2,3, '_ijklmn_')

select left ('ABCDEFG', 5)
select right ('ABCDEFG', 5)

select replicate('ABC', 10)

select substring('ABCDEFGHI', 2,3)

select len('abcd efg')
select len('abcd   ')

select reverse('abcd')

select lower('ABCD')
select lower(PrimeiroNome_funcionario) from Funcionario

select upper('abcd')
select upper(PrimeiroNome_funcionario) from Funcionario

select '_' + ltrim('    AbCD    ') + '_'
select '_' + rtrim('    AbCD    ') + '_'
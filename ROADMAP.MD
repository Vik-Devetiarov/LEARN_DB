# Roadmap по программированию и Computer Science - с нуля

Этот roadmap пересобран без предположения, что что-то уже прочитано, начато или завершено.

Маршрут состоит из трех связанных линий:

- **книги** - дают фундамент и порядок изучения;
- **проекты** - превращают чтение в видимый результат;
- **навыки** - фиксируют, что должно стать рабочей привычкой.

Главный принцип:

> Этап не считается пройденным заранее. Каждая книга = заметки + упражнения + код. Каждый проект = законченный результат. Каждый навык = регулярная практика.

---

## 1. Общая логика маршрута

```text
Code
-> The Little Schemer
-> Computer Science Distilled + The Pragmatic Programmer
-> SICP + How to Design Programs
-> C
-> Python
-> Systems
-> Interpreters
-> Algorithms
-> Backend
-> Architecture
```

Python стоит после The Little Schemer, SICP и C не потому, что его нельзя начинать раньше, а потому что основной маршрут делает ставку на фундамент: сначала вычисления, рекурсия, абстракции и память, затем практический инструмент.

---

## 2. Визуальные карты

### 2.1. Книги

![Roadmap по книгам](assets/roadmaps/visual_roadmap_books_reset.png)

### 2.2. Проекты

![Roadmap по проектам](assets/roadmaps/visual_roadmap_projects_reset.png)

### 2.3. Навыки

![Roadmap по навыкам](assets/roadmaps/visual_roadmap_skills_reset.png)

---

## 3. Сводная карта этапов

| Этап | Фокус | Книги | Проекты | Навыки |
|---:|---|---|---|---|
| 1 | Старт | Code | - | среда, терминал, Git, README |
| 2 | Мышление программиста | The Little Schemer, Computer Science Distilled, The Pragmatic Programmer | Recursion Playground, Scheme Notes | функции, условия, рекурсия, чтение ошибок |
| 3 | CS-фундамент | SICP, How to Design Programs | SICP Exercise Journal, Simple Evaluator, Stream Experiments | evaluation model, environments, state, streams |
| 4 | C и низкий уровень | The C Programming Language | C Text Tools, Mini Shell, Tiny Database in C | pointers, stack, heap, compiler errors, debugging |
| 5 | Python | Automate the Boring Stuff, The Python Tutorial, Learning Python, Fluent Python | Cocktail Cost Calculator, Bar Inventory Helper, Recipe Book CLI, Shift Notes Parser, Bar Manager Toolkit | venv, pip, files, JSON, CSV, pytest, project structure |
| 6 | Systems | CS:APP | CS:APP Labs, Memory Visualizer | machine code, processes, virtual memory, concurrency |
| 7 | Языки и интерпретаторы | Crafting Interpreters, EOPL, TAPL | Lox Interpreter, Tiny Lisp | lexer, parser, AST, evaluator, closures, type systems |
| 8 | Алгоритмы | Grokking Algorithms, CLRS | Algorithms Notebook, LeetCode Journal | Big O, trees, graphs, dynamic programming, search, sort |
| 9 | Backend и архитектура | DDIA, A Philosophy of Software Design, Clean Code, Clean Architecture | Cocktail API, Bar Management Web Backend, Refactoring Case Study | HTTP, REST, SQL, PostgreSQL, FastAPI, refactoring, trade-offs |

---

# Часть I. Roadmap по книгам

## Этап 1 - Введение в устройство компьютера

### 1.1. Code: The Hidden Language of Computer Hardware and Software

**Автор:** Charles Petzold

**Цель:** понять, как компьютер работает на уровне абстракций.

**Что должно появиться после этапа:**

- понимание связи hardware и software;
- интуиция про слои абстракций;
- базовое представление о том, как вычисления строятся из простых элементов.

---

## Этап 2 - Мышление программиста

### 2.1. The Little Schemer

**Авторы:** Daniel P. Friedman, Matthias Felleisen

**Цель:** научиться мыслить рекурсивно и перестать бояться кода.

**Что даст:**

- рекурсию;
- функциональное мышление;
- работу со списками;
- base case и recursive step;
- мышление через преобразование данных.

### 2.2. Computer Science Distilled

**Автор:** Wladston Ferreira Filho

**Цель:** получить обзорную карту Computer Science.

**Что даст:**

- обзор алгоритмов и структур данных;
- первое понимание сложности;
- представление о сетях, базах данных и AI;
- общую картину области.

### 2.3. The Pragmatic Programmer

**Авторы:** Andrew Hunt, David Thomas

**Цель:** сформировать профессиональное отношение к программированию.

**Что даст:**

- инженерное мышление;
- дисциплину;
- аккуратность;
- привычку работать с ошибками;
- отношение к программированию как к ремеслу.

---

## Этап 3 - Глубокая CS-база

### 3.1. Structure and Interpretation of Computer Programs

**Авторы:** Harold Abelson, Gerald Jay Sussman, Julie Sussman
**Кратко:** SICP

**Цель:** понять модели вычислений, абстракции и интерпретаторы.

**Что даст:**

- композицию;
- окружения;
- состояние и мутацию;
- потоки;
- метаязыковую абстракцию;
- понимание интерпретаторов.

### 3.2. How to Design Programs

**Авторы:** Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi

**Цель:** научиться системно проектировать программы.

**Что даст:**

- проектирование функций;
- работу от данных к программе;
- разбиение задач;
- дисциплину разработки.

---

## Этап 4 - C и низкий уровень

### 4.1. The C Programming Language

**Авторы:** Brian Kernighan, Dennis Ritchie

**Цель:** понять память, указатели и низкоуровневую модель программы.

**Что даст:**

- указатели;
- массивы;
- строки;
- работу с файлами;
- ручную работу с данными;
- понимание того, что происходит ближе к машине.

---

## Этап 5 - Python как практический инструмент

### 5.1. Automate the Boring Stuff with Python

**Автор:** Al Sweigart

**Цель:** быстро перейти к написанию полезных программ.

### 5.2. The Python Tutorial

**Источник:** официальная документация Python

**Цель:** систематизировать базовый Python.

### 5.3. Learning Python / Изучаем Python

**Автор:** Mark Lutz

**Цель:** глубже понять Python как язык.

### 5.4. Fluent Python

**Автор:** Luciano Ramalho

**Цель:** понять более глубокие механизмы Python после практики.

---

## Этап 6 - Systems

### 6.1. Computer Systems: A Programmer's Perspective

**Авторы:** Randal E. Bryant, David R. O'Hallaron

**Цель:** понять компьютерные системы с точки зрения программиста.

**Что даст:**

- представление данных;
- machine code basics;
- linking;
- процессы;
- virtual memory;
- cache locality;
- concurrency.

---

## Этап 7 - Языки программирования и интерпретаторы

### 7.1. Crafting Interpreters

**Автор:** Robert Nystrom

**Цель:** научиться строить язык программирования.

### 7.2. Essentials of Programming Languages

**Авторы:** Daniel P. Friedman, Mitchell Wand

**Цель:** углубиться в теорию языков программирования.

### 7.3. Types and Programming Languages

**Автор:** Benjamin C. Pierce

**Цель:** изучить формальные системы типов.

---

## Этап 8 - Алгоритмы

### 8.1. Grokking Algorithms

**Автор:** Aditya Bhargava

**Цель:** получить интуитивное понимание алгоритмов.

### 8.2. Introduction to Algorithms

**Авторы:** Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein
**Кратко:** CLRS

**Цель:** получить серьезную алгоритмическую базу.

---

## Этап 9 - Backend и современные системы

### 9.1. Designing Data-Intensive Applications

**Автор:** Martin Kleppmann

**Цель:** понять backend и distributed systems.

---

## Этап 10 - Качество кода и архитектура

### 10.1. A Philosophy of Software Design

**Автор:** John Ousterhout

**Цель:** научиться управлять сложностью.

### 10.2. Clean Code

**Автор:** Robert C. Martin

**Цель:** понять читаемость и поддерживаемость кода.

### 10.3. Clean Architecture

**Автор:** Robert C. Martin

**Цель:** понять архитектурные границы и направление зависимостей.

---

## Итоговый порядок книг

1. Code
2. The Little Schemer
3. Computer Science Distilled
4. The Pragmatic Programmer
5. SICP
6. How to Design Programs
7. The C Programming Language
8. Automate the Boring Stuff with Python
9. The Python Tutorial
10. Learning Python / Изучаем Python
11. Fluent Python
12. Computer Systems: A Programmer's Perspective
13. Crafting Interpreters
14. Essentials of Programming Languages
15. Types and Programming Languages
16. Grokking Algorithms
17. CLRS
18. Designing Data-Intensive Applications
19. A Philosophy of Software Design
20. Clean Code
21. Clean Architecture

---

# Часть II. Roadmap по проектам

Главный принцип проектной линии:

> Маленькие законченные проекты важнее больших незавершенных идей.

## Этап 1 - После начала The Little Schemer

### 1. Recursion Playground

**Цель:** закрепить рекурсивное мышление.

**Что сделать:**

- функции для работы со списками;
- подсчет элементов;
- удаление элементов;
- поиск;
- вложенные списки;
- простые трансформации.

### 2. Scheme Notes

**Цель:** научиться фиксировать понимание своими словами.

**Что сделать:** Markdown-конспект по рекурсии, спискам, base case и recursive step.

---

## Этап 2 - Во время SICP

### 3. SICP Exercise Journal

**Цель:** системно фиксировать решения упражнений.

### 4. Simple Evaluator

**Цель:** закрепить идею интерпретатора.

**Возможности:**

- числа;
- переменные;
- простые операции;
- условные выражения;
- окружение.

### 5. Stream Experiments

**Цель:** понять потоки и отложенные вычисления.

---

## Этап 3 - После C

### 6. C Text Tools

**Цель:** научиться писать полезные консольные программы на C.

### 7. Mini Shell

**Цель:** понять процессы, команды и взаимодействие с ОС.

### 8. Tiny Database in C

**Цель:** понять хранение данных в файле.

---

## Этап 4 - Python

### 9. Cocktail Cost Calculator

**Цель:** первый полезный Python-проект.

### 10. Bar Inventory Helper

**Цель:** автоматизировать учет остатков.

### 11. Recipe Book CLI

**Цель:** сделать CLI-базу рецептов.

### 12. Shift Notes Parser

**Цель:** автоматизировать разбор заметок по сменам.

### 13. Bar Manager Toolkit

**Цель:** первый крупный Python-проект с тестами и структурой.

---

## Этап 5 - Systems

### 14. CS:APP Labs / Systems Exercises

**Цель:** закрепить системное мышление.

### 15. Memory Visualizer

**Цель:** понять stack, heap и указатели.

---

## Этап 6 - Интерпретаторы

### 16. Lox Interpreter

**Цель:** пройти Crafting Interpreters с полноценной реализацией языка.

### 17. Tiny Lisp

**Цель:** связать Scheme, SICP и интерпретаторы.

---

## Этап 7 - Алгоритмы

### 18. Algorithms Notebook

**Цель:** собрать личную библиотеку алгоритмов.

### 19. LeetCode Journal

**Цель:** фиксировать задачи, паттерны и ошибки.

---

## Этап 8 - Backend

### 20. Cocktail API

**Цель:** сделать первый backend-проект.

### 21. Bar Management Web Backend

**Цель:** развить Bar Manager Toolkit до backend-системы.

---

## Этап 9 - Архитектура

### 22. Refactoring Case Study

**Цель:** научиться улучшать собственный старый код.

---

## Итоговый порядок проектов

1. Recursion Playground
2. Scheme Notes
3. SICP Exercise Journal
4. Simple Evaluator
5. Stream Experiments
6. C Text Tools
7. Mini Shell
8. Tiny Database in C
9. Cocktail Cost Calculator
10. Bar Inventory Helper
11. Recipe Book CLI
12. Shift Notes Parser
13. Bar Manager Toolkit
14. CS:APP Labs / Systems Exercises
15. Memory Visualizer
16. Lox Interpreter
17. Tiny Lisp
18. Algorithms Notebook
19. LeetCode Journal
20. Cocktail API
21. Bar Management Web Backend
22. Refactoring Case Study

---

# Часть III. Roadmap по навыкам

Книги дают знания. Проекты дают практику. Навыки превращают это в профессию.

## Этап 1 - Среда и самостоятельность

- установка редактора;
- работа с терминалом;
- базовые команды shell;
- работа с файлами;
- запуск программ;
- чтение ошибок.

## Этап 2 - Git и GitHub

- `git init`;
- `git status`;
- `git add`;
- `git commit`;
- `git diff`;
- `.gitignore`;
- GitHub repository;
- README.

## Этап 3 - Базовое программирование

- переменные;
- выражения;
- функции;
- условия;
- рекурсия;
- списки;
- чтение кода;
- трассировка программы.

## Этап 4 - Рекурсивное и функциональное мышление

- base case;
- recursive step;
- работа со списками;
- вложенные структуры;
- композиция функций;
- преобразование данных.

## Этап 5 - Computer Science thinking

- абстракция;
- decomposition;
- data abstraction;
- environments;
- evaluation model;
- state;
- mutation;
- interpreters;
- streams.

## Этап 6 - C и память

- компиляция;
- указатели;
- массивы;
- строки;
- stack;
- heap;
- debugging;
- работа с файлами.

## Этап 7 - Debugging

- чтение traceback;
- чтение compiler errors;
- print debugging;
- debugger;
- пошаговое выполнение;
- hypothesis-driven debugging.

## Этап 8 - Python

- базовый синтаксис;
- списки и словари;
- функции;
- файлы;
- JSON и CSV;
- virtual environments;
- зависимости;
- структура проекта.

## Этап 9 - Тестирование

- unit tests;
- `assert`;
- pytest;
- тестирование ошибок;
- regression tests.

## Этап 10 - Структура проектов

- README;
- `src/` layout;
- `tests/`;
- `pyproject.toml`;
- package structure;
- CLI entry points.

## Этап 11 - Системное мышление

- machine code basics;
- assembly basics;
- linking;
- processes;
- virtual memory;
- cache locality;
- concurrency.

## Этап 12 - Интерпретаторы и языки

- lexical analysis;
- parsing;
- AST;
- evaluation;
- closures;
- bytecode;
- runtime;
- type systems basics.

## Этап 13 - Алгоритмы и структуры данных

- Big O;
- arrays;
- linked lists;
- trees;
- graphs;
- sorting;
- searching;
- dynamic programming basics.

## Этап 14 - Backend

- HTTP;
- REST;
- JSON API;
- database basics;
- SQL;
- PostgreSQL;
- FastAPI;
- testing APIs.

## Этап 15 - Data-intensive systems

- indexes;
- transactions;
- replication;
- partitioning;
- consistency;
- distributed systems basics.

## Этап 16 - Качество кода

- naming;
- decomposition;
- cohesion;
- coupling;
- refactoring;
- readability;
- simplicity.

## Этап 17 - Архитектура

- boundaries;
- dependency direction;
- layering;
- separation of concerns;
- trade-offs;
- avoiding overengineering.

## Этап 18 - Учебная дисциплина

- регулярность;
- progress log;
- заметки;
- повторение;
- разбор ошибок;
- защита от выгорания.

---

# Рекомендуемый ритм

При графике 12-15 часов:

- 30 минут в день - уже хорошо;
- 60-90 минут - отлично;
- в тяжелые дни достаточно чтения и заметок;
- главное - не выпадать надолго.

---

# Как вести репозиторий

## README.md

Краткая карта, текущий прогресс и ссылки на полную дорожную карту.

## ROADMAP.MD

Полная дорожная карта по книгам, проектам и навыкам.

## DIARY.md

Пустой дневник с чистого листа. Заполнять только новыми записями после сброса.

## archive/legacy

Старые файлы, заметки, решения и предыдущий дневник. Архив не используется как текущий прогресс.

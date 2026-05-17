# App Lista de Compras Estilizado

Aplicativo mobile desenvolvido em Flutter para gerenciamento de listas de compras, com suporte a tema claro/escuro, controle de itens marcados, cálculo automático de valores e interface moderna.

---

# Funcionalidades

- Criar listas de compras
- Adicionar itens à lista
- Marcar itens como comprados
- Controle de progresso da lista
- Soma automática:
  - itens comprados
  - itens não comprados
- Tema claro e escuro
- Interface responsiva
- Navegação entre telas
- Modal para criação de itens

---

# Tecnologias Utilizadas

## Flutter

Framework principal utilizado para construção da interface mobile multiplataforma.

## Dart

Linguagem utilizada no desenvolvimento da aplicação.

## Material Design

Componentes visuais e estrutura de UI utilizando Material Design 3.

## ThemeExtension

Utilizado para gerenciamento avançado de cores customizadas da aplicação.

## ValueNotifier

Gerenciamento simples de estado para troca dinâmica de tema.

## GetIt

Injeção de dependência utilizada para gerenciamento global do `ThemeStore`.

---

# Sistema de Temas

A aplicação possui:

- Tema Claro
- Tema Escuro
- Troca dinâmica de tema
- Cores centralizadas em `AppColors`
- Customização utilizando `ThemeExtension`

---

# Estrutura do Projeto

```txt
lib/
│
├── model/
│   ├── Item.dart
│   └── ListaCompra.dart
│
├── pages/
│   ├── add_list.page.dart
│   ├── config.page.dart
│   ├── datail_list.page.dart
│   └── compras_list.page.dart
│
├── widgets/
│   ├── add_item.widget.dart
│   ├── listaDeCompras.widget.dart
│   └── telaVazia.widget.dart
│
├── stores/
│   └── theme.store.dart
│
├── themes/
│   ├── app_colors.dart
│   └── themes.dart
│
└── main.dart

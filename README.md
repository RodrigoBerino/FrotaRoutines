![Frota DS Banner](./assets/frota_banner.svg)

1 - App Flutter para inspeções de frota de veículos que funciona em modo **offline-first** e sincroniza dados com um servidor quando há conexão com internet feito a partir de um problema real para equipes em campo que precisam capturar rotinas e riscos sem depender de conectividade constante.

O App foi desenvolvido usando a **arquitetura MVVM (Model-View-ViewModel)**, que separa a View (widgets e interface do usuário), ViewModel (lógica de apresentação e estados) e Model (dados e entidades).

O App também foi um reedesign do sistema atual, buscando melhorias de arquitetura e estética para o usuário.

---

### 1. Rode esse projeto

Siga estes passos para iniciar o projeto localmente:

**a) Clone o repositório**

```yaml
git clone git@github.com:RodrigoBerino/FrotaRoutines.git
```

**b) Comandos**

```bash
cd FrotaRoutines

flutter pub get

flutter run
```

---

### 2. Problemática do projeto

O App nasceu com a necessidade de tornar uma parte do sistema offline-first, que é um método amplamente utilizado em apps que precisam ser resilientes a falhas de rede, usando banco local (SQLite/Room em projetos Android nativos).

- A ideia central do projeto é salvar dados localmente sempre que o usuário registra uma inspeção.
- Marcar itens pendentes de sincronização em um status internoVerificar conectividade periodicamente;
- Sincronizar automaticamente quando houver internet disponível.

---

### 3. Tecnologias

- Flutter
- Dart
- Figma
- Provider (Gerenciamento de estado)
- Arquitetura MVVM
- Persistência local
- Sincronização condicional baseada em conectividade

---

### Ref:

[Frota Routines - Figma File](https://www.figma.com/design/l3MUPYHUDUqcSygyD9PLtJ/Frota-Routines?node-id=0-1&t=iwLrDwG03800ffYB-1)

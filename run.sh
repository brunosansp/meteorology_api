# create project
$ npm init

# add typescript
$ yarn add -D typescript

# add types node em ambiente de DEV
$ yarn add -D @types/node

# add module-alias para fazer os paths que estarão no tsconfig.json funcionarem
$ yarn add module-alias
  ## add types do module-alias em ambiente de DEV
  $ yarn add -D @types/module-alias

# add eslint plugin e parser
$ yarn add -D @typescript-eslint/eslint-plugin eslint @typescript-eslint/parser

# Nosso package.json deve ter os seguintes scirpts até o momento:
"scripts": {
    "build": "tsc",
    "start": "yarn build && node dist/src/index.js",
    "start:dev": "ts-node-dev 'src/index.ts'",
    "lint": "eslint ./src ./test --ext .ts",
    "lint:fix": "eslint ./src ./test --ext .ts --fix",
    "test": "echo \"Error: no test specified\" && exit 1"
},

# add ts-node-dev para escutar os arquivos e recompilar apenas o que sofreu mudanças (tipo um repl)
  ## adicionar em package.json > scripts => "start:dev": "ts-node-dev 'src/index.ts'"
$ yarn add -D ts-node-dev

# add jest
$ yarn add -D jest ts-jest @types/jest

# add supertest
yarn add -D supertest @types/supertest

# add em scripts no package.json
# o --runInBand força os testes funcionais serem rodados em sequência ordenada, por padrão o jest roda arquivos
# de teste em paralelo(teste de unidade não precisa sem em ordem)
"test:functional": "jest --projects ./test --forceExit --runInBand"

# rodar a aplicação em modo de teste
$ yarn test:unit --watch

# add express and body-parser and onernight
$ yarn add express body-parser @overnightjs/core

# add @types/express para ambiente de desenvolvimento
$ yarn add -D @types/express

# add Prettier para forçarmos um padrão de escrita no código, necessário apenas em ambiente de desenvolvimento
$ yarn add -D prettier

# add axios e @types/axios
$ yarn add axios
  $ yarn add -D @types/axios

# add módulo externo node config
$ yarn add config
  $ yarn add -D @types/config
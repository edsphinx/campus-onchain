# UNIBRIDGE: Connecting Blockchain Protocols with Universities

## Proyecto

### Descripción

UNIBRIDGE es una plataforma diseñada para conectar organizadores de eventos presenciales (IRL) en blockchain con patrocinadores interesados en promover sus tecnologías, así como con instituciones educativas y empresas que desean organizar charlas y talleres sobre tecnologías blockchain. UNIBRIDGE facilita la comunicación y coordinación entre estas partes interesadas, permitiendo la organización autónoma y a gran escala de eventos educativos.

La plataforma utiliza un sistema de reputación basado en blockchain, registrando eventos realizados, el desempeño de los grupos estudiantiles y las contribuciones de los protocolos. Este sistema de reputación on-chain no solo ofrece transparencia, sino que también permite a cualquiera construir nuevas funcionalidades basadas en los datos de reputación. Esto podría ser valioso para futuras implementaciones como la financiación cuadrática u otros métodos innovadores de distribución de recursos y toma de decisiones.

Además, UNIBRIDGE integrará sistemas de monederos y multisig para la distribución transparente de recursos, así como recompensas en tokens y NFTs para incentivar la participación y ofrecer continuidad educativa a través de desafíos, hackathons y oportunidades de mentoría posteriores a los eventos.

### Diferenciador

UNIBRIDGE no solo busca coordinar eventos, sino también activar el ecosistema global de blockchain incubando a futuros líderes de la industria desde su etapa universitaria. La visión de UNIBRIDGE es generar un impacto acumulativo y exponencial en la educación sobre blockchain, asegurando que los estudiantes de hoy se conviertan en los CEOs y CTOs del mañana, con un profundo y práctico conocimiento de las tecnologías blockchain.

### Visión

UNIBRIDGE tiene el potencial de ser autosostenible y escalar internacionalmente, maximizando el uso de los recursos disponibles y fomentando comunidades activas de estudiantes comprometidos con blockchain.

## Puesta en Marcha del Proyecto

### Requisitos Previos

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas:

- Node.js (>= v18.17)
- Yarn (v1 o v2+)
- Git

### Instrucciones de Configuración

#### Clonar el Repositorio e Instalar Dependencias

```bash
git clone https://github.com/edsphinx/campus-onchain.git
cd campus-onchain
yarn install
```

#### Ejecutar una Red Local

En la primera terminal, inicia una red local de Ethereum utilizando Hardhat:

```bash
yarn chain
```

#### Desplegar el Contrato Inteligente de Prueba

En una segunda terminal, despliega el contrato inteligente de prueba en la red local:

```bash
yarn deploy
```

#### Iniciar la Aplicación NextJS

En una tercera terminal, inicia la aplicación NextJS:

```bash
yarn start
```

Visita tu aplicación en: [http://localhost:3000](http://localhost:3000). Puedes interactuar con tu contrato inteligente utilizando la página de Debug Contracts.

### Pruebas

- Edita tu test de contrato inteligente en `packages/hardhat/test`. Para ejecutar los tests, usa:

```bash
yarn hardhat:test
```

## Documentación

Consulta la [documentación de Campus On Chain](https://github.com/edsphinx/campus-onchain/blob/main/README.md) para aprender más sobre cómo empezar a construir con esta herramienta.

## Contribuir a Campus On Chain

¡Damos la bienvenida a las contribuciones a Campus On Chain! Por favor, revisa [CONTRIBUTING.MD](https://github.com/edsphinx/campus-onchain/blob/main/CONTRIBUTING.md) para más información y pautas para contribuir.

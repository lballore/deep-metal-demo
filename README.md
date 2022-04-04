# deep-metal-demo

Demo application for the DeepMetal generative model.
A little SPA able to demonstrate some capabilities of the **DeepMetal** model, built using [FastAPI](https://github.com/tiangolo/fastapi) as backend framework and [Svelte](https://svelte.dev/) for the frontend part.

For more info about the model, please look at the [GitHub repo](https://github.com/lucone83/deep-metal) or at the [model card on HuggingFace](https://huggingface.co/lucone83/deep-metal).


## How to use

The application is supposed to run inside a **Docker** container, so you must have it installed.

### Run in local

To execute the demo app in local, just run from the root folder of the project:

```bash
make demo-build demo-run
```

The application should then be reachable at your lohalhost address: `http://127.0.0.1`

### Tests

To execute unit tests in a Docker environment, just run

```
make demo-test-build demo-test-run
```

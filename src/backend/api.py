from fastapi import APIRouter

from datatypes import GenerateLyricsRequest, GenerateLyricsResponse

from libs.deepmetal import GENERATOR_MODEL, generate_lyrics

API_VERSION = "v1"


def make_api_router(settings) -> APIRouter:
    app = APIRouter()

    @app.post("/generate", response_model=GenerateLyricsResponse)
    def generate(
        generate_request: GenerateLyricsRequest,
    ) -> GenerateLyricsResponse:

        lyrics = generate_lyrics(
            generator=GENERATOR_MODEL,
            text_inputs=generate_request.text_inputs,
            temperature=generate_request.temperature
        )
        return GenerateLyricsResponse(
            lyrics=lyrics
        )

    return app

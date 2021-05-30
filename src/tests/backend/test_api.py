from fastapi.testclient import TestClient

from run import Settings, make_app

SETTINGS = Settings()

app = make_app(SETTINGS)
client = TestClient(app)


def test_healthcheck():
    response = client.get("/healthcheck")
    assert response.status_code == 200
    assert response.json() == "OK"

import unittest
import yaml
import json

class TestConfig(unittest.TestCase):
    def setUp(self):
        self.files = [ # I've obfuscated the real routes for security reasons.
            ('dev', 'deployments/.../dev.yaml'),
            ('stage', 'deployments/.../stage.yaml'),
            ('prod', 'deployments/.../prod.yaml'),
            ('sandbox', 'deployments/.../sandbox.yaml'),
        ]

    def test_well_known_android_json(self):
        for name, file_path in self.files:
            with self.subTest(file=name):
                with open(file_path, 'r') as file:
                    config = yaml.safe_load(file)
                data = config['configmap']['data']['well_known_android']
                self.assertIsInstance(json.loads(data.strip()), list)

    def test_well_known_apple_json(self):
        for name, file_path in self.files:
            with self.subTest(file=name):
                with open(file_path, 'r') as file:
                    config = yaml.safe_load(file)
                data = config['configmap']['data']['well_known_apple']
                self.assertIsInstance(json.loads(data.strip()), dict)
import csv
import time

import requests


class Candidate:
    def __init__(self, first_name, last_name, email, tech_stack, main_skill, main_skill_grade):
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.tech_stack = tech_stack
        self.main_skil = main_skill
        self.main_skil_grade = main_skill_grade

    @property
    def get_full_name(self):
        return f"{self.first_name} {self.last_name}"

    @classmethod
    def get_candidates_info(cls, url):
        file_url = requests.get(url)
        with open('new_candidates.csv', 'wb') as fp:
            fp.write(file_url.content)
        return 'new_candidates.csv'

    @classmethod
    def generate_candidates(cls, path_to_file):
        with open(cls.get_candidates_info(path_to_file) if path_to_file.startswith('https:/') else path_to_file) as source_file:
            reader = csv.DictReader(source_file)
            cand_data_prepared = []
            for record in reader:
                candidate = dict(
                    first_name=record['Full Name'].split(maxsplit=1)[0],
                    last_name=record['Full Name'].split(maxsplit=1)[1],
                    email=record['Email'],
                    tech_stack=record['Technologies'].split('|'),
                    main_skill=record['Main Skill'],
                    main_skill_grade=record['Main Skill Grade']
                )
                cand_data_prepared.append(candidate)
            return [cls(**x) for x in cand_data_prepared]


if __name__ == '__main__':
    start_time = time.time()

    candidates = Candidate.generate_candidates(
        'https://bitbucket.org/ivnukov/lesson2/raw/4f59074e6fbb552398f87636b5bf089a1618da0a/candidates.csv'
    )
    candidates_2 = Candidate.generate_candidates('candidates.csv')
    print([x.get_full_name for x in candidates])
    print([x.get_full_name for x in candidates_2])
    print(f'Duration: {time.time()-start_time}')

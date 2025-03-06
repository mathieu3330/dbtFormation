Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


Altimate AI:
- 7774ac731152fa0324529d897d716c90
- morganit


dbt test --select "test_type:unit"           #  run all unit tests
dbt test --select "test_type:data"           #  run all data tests
dbt test --select "test_type:generic"        #  run all generic data tests
dbt test --select "test_type:singular"       #  run all generic data tests















1- Installer :
pip install elementary-data

pip install elementary-data
pip install 'elementary-data[bigquery]'
 


2- ajouter dans package.yml:

packages:
  - package: elementary-data/elementary
    version: 0.16.1
    ## Docs: https://docs.elementary-data.com

3- ajouter dans dbt_project.yml
  elementary:
    +schema: "elementary"

flags:
  require_explicit_package_overrides_for_builtin_materializations: False
  source_freshness_run_project_hooks: True

4- ajouter dans profile.yml:

dbt run-operation elementary.generate_elementary_cli_profile


5- lancer:
dbt deps
dbt run --select elementary

6- executer:
dbt test
edr report



cookbook-spark Cookbook
=======================
Minimalist cookbook to install a pre-built spark package

Based on the cookbook https://github.com/holdenk/chef-cookbook-spark

Requirements
------------

#### cookbooks
- `scala` - cookbook-spark needs the scala cookbook.

Attributes
----------

#### cookbook-spark::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['spark']['version']</tt></td>
    <td>String</td>
    <td>Version of pre-built package to download</td>
    <td>v0.9.0-incubating-bin-hadoop2</td>
  </tr>
  <tr>
    <td><tt>['spark']['repository']</tt></td>
    <td>String</td>
    <td>URL of the repository to download the pre-built spark package</td>
    <td><tt>http://d3kbcqa49mib13.cloudfront.net/#{node[:spark][:version]}.tgz</tt></td>
  </tr>
  <tr>
    <td><tt>['spark']['username']</tt></td>
    <td>String</td>
    <td>Name of the user used to install spark</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['spark']['group']</tt></td>
    <td>String</td>
    <td>Name of the group of the user used to install spark</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>['spark']['home']</tt></td>
    <td>String</td>
    <td>Path of the home installation for spark</td>
    <td><tt>root</tt></td>
  </tr>
</table>


Usage
-----
#### cookbook-spark::default

Just include `cookbook-spark` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cookbook-spark]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Fernando Diaz

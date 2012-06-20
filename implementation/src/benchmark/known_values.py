#!/usr/bin/python

import os
from collections import defaultdict
from known_hplus import *

root_dir = "/home/pommerening/projects/relaxeddelete/implementation/src/benchmark/known_values.d"

_h_plus_lower_bounds = defaultdict(lambda : (0, "possible range"))
_h_plus_upper_bounds = defaultdict(lambda : (float("inf"), "possible range"))

_h_opt_lower_bounds = defaultdict(lambda : (0, "possible range"))
_h_opt_upper_bounds = defaultdict(lambda : (float("inf"), "possible range"))

_translations = {
    'patrikdomain': {
    }
}


def count_known_h_plus(domain):
    count = 0
    for (d,p), lower_bound in _h_plus_lower_bounds:
        if d == domain and lower_bound == _h_plus_upper_bounds[(d,p)][0]:
            count += 1
    return count

def get_known_value(domain, task, name):
    if name == 'h_plus':
        if _h_plus_lower_bounds[(domain, task)][0] == _h_plus_upper_bounds[(domain, task)][0]:
            return _h_plus_lower_bounds[(domain, task)][0]
        return None
    elif name == 'h_opt':
        if _h_opt_lower_bounds[(domain, task)][0] == _h_opt_upper_bounds[(domain, task)][0]:
            return _h_opt_lower_bounds[(domain, task)][0]
        return None
    else:
        return globals()["_%ss"][(domain, task)][0]

def _check_h_plus_value(domain, task, value, update_for=None):
    for check in (_check_h_plus_lower_bound_value, _check_h_plus_upper_bound_value):
        error, reason = check(domain, task, value, update_for)
        if error:
            return error, reason
    return (False, None)

def _check_h_plus_lower_bound_value(domain, task, lower_bound, update_for=None):
    error, reason = _check_h_opt_lower_bound_value(domain, task, lower_bound, update_for)
    if error:
        return error, reason
    (upper_bound, upper_bound_reason) = _h_plus_upper_bounds[(domain, task)]
    if lower_bound > upper_bound:
        return True, ('h_plus upper bound', upper_bound, upper_bound_reason)
    if update_for is not None and _h_plus_lower_bounds[(domain, task)][0] < lower_bound:
        _h_plus_lower_bounds[(domain, task)] = (lower_bound, update_for)
    return (False, None)

def _check_h_plus_upper_bound_value(domain, task, upper_bound, update_for=None):
    (lower_bound, lower_bound_reason) = _h_plus_lower_bounds[(domain, task)]
    if lower_bound > upper_bound:
        return True, ('h_plus lower bound', lower_bound, lower_bound_reason)
    if update_for is not None and _h_plus_upper_bounds[(domain, task)][0] > upper_bound:
        _h_plus_upper_bounds[(domain, task)] = (upper_bound, update_for)
    return (False, None)

def _check_h_opt_value(domain, task, value, update_for=None):
    for check in (_check_h_opt_lower_bound_value, _check_h_opt_upper_bound_value):
        error, reason = check(domain, task, value, update_for)
        if error:
            return error, reason
    return (False, None)

def _check_h_opt_lower_bound_value(domain, task, lower_bound, update_for=None):
    (upper_bound, upper_bound_reason) = _h_opt_upper_bounds[(domain, task)]
    if lower_bound > upper_bound:
        return True, ('h_opt upper bound', upper_bound, upper_bound_reason)
    if update_for is not None and _h_opt_lower_bounds[(domain, task)][0] < lower_bound:
        _h_opt_lower_bounds[(domain, task)] = (lower_bound, update_for)
    return (False, None)

def _check_h_opt_upper_bound_value(domain, task, upper_bound, update_for=None):
    error, reason = _check_h_plus_upper_bound_value(domain, task, upper_bound, update_for)
    if error:
        return error, reason
    (lower_bound, lower_bound_reason) = _h_opt_lower_bounds[(domain, task)]
    if lower_bound > upper_bound:
        return True, ('h_opt lower bound', lower_bound, lower_bound_reason)
    if update_for is not None and _h_opt_upper_bounds[(domain, task)][0] > upper_bound:
        _h_opt_upper_bounds[(domain, task)] = (upper_bound, update_for)
    return (False, None)

def check_value(domain, task, name, value, update_for=None):
    check = globals()["_check_%s_value" % name]
    (error, reason) = check(domain, task, value, update_for=update_for)
    if error:
        print "!!!! INCONSISTENT VALUES IN DATABASE:"
        print "In '%s/%s' the %s value %s from '%s' conflicts with the %s value %s from '%s'" % (
              (domain, task, name, value, update_for or "current data") + reason)

def _parse_value(name, values, columns, clazz=str):
    if name not in columns:
        return None
    try:
        value = clazz(values[columns.index(name)].strip())
    except:
        return None
    if _translations.has_key(name) and _translations[name].has_key(value):
        value = _translations[name][value]
    return value

def _load_line(update_for, values, columns):
    domain = _parse_value('domain', values, columns) or _parse_value('patrikdomain', values, columns)
    task =   _parse_value('task', values, columns)
    if domain is None or task is None:
        print "unrecognized line", line
    for name in ['h_plus', 'h_plus_lower_bound', 'h_plus_upper_bound', 
                  'h_opt',  'h_opt_lower_bound',  'h_opt_upper_bound']:
        value = _parse_value(name, values, columns, clazz=float)
        if value is None:
            continue
        check_value(domain, task, name, value, update_for=update_for)
    

def load_file(filepath):
    update_for = os.path.relpath(filepath, root_dir)
    first_line = True
    for line in open(filepath):
        line = line.strip()
        if line.startswith('#'):
            continue
        if first_line:
            if '\t' in line:
                splitter = '\t'
            if ';' in line:
                splitter = ';'
            if ',' in line:
                splitter = ','
            else:
                splitter = ' '
            columns = line.split(splitter)
            if ('domain' not in columns and 'patrikdomain' not in columns) or 'task' not in columns:
                print 'unrecognized format', line
            first_line = False
        else:
            _load_line(update_for, line.split(splitter), columns)

def _load_all_files(root_dir):
    for root, dirnames, filenames in os.walk(root_dir):
      for filename in filenames:
          load_file(os.path.join(root, filename))


def pretty_print_values():
    print "domain,task,h_plus_lower_bound,h_plus_upper_bound,h_opt_lower_bound,h_opt_upper_bound"
    for (d,p) in sorted(_h_plus_lower_bounds.keys() + _h_plus_upper_bounds.keys() +
                         _h_opt_lower_bounds.keys() + _h_opt_upper_bounds.keys()):
        h_plus_lb = _h_plus_lower_bounds[(d,p)][0]
        h_plus_ub = _h_plus_upper_bounds[(d,p)][0]
        h_opt_lb = _h_opt_lower_bounds[(d,p)][0]
        h_opt_ub = _h_opt_upper_bounds[(d,p)][0]
        print "%s,%s,%s,%s,%s,%s" % (d,p,h_plus_lb,h_plus_ub,h_opt_lb,h_opt_ub)


_load_all_files(root_dir)
if __name__ == '__main__':
    pretty_print_values()

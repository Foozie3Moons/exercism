def flatten(iterable):
    out = []
    for item in iterable:
        if isinstance(item, (list, tuple)):
            out.extend(flatten(item))
        elif item is not None:
            out.append(item)
    return out

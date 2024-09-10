import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/providers/filters_provider.dart';

class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({super.key, required this.currentFilters});

final Map<Filter, bool>currentFilters;

  @override
  ConsumerState<FilterScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  var _heartbrokenFilterSet = false;
  var _vibingFilterSet = false;
  @override
  void initState() {
    super.initState();
    _heartbrokenFilterSet = widget.currentFilters[Filter.heartBroken]!;
    _vibingFilterSet = widget.currentFilters[Filter.vibing]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'music') {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const TabsScreen()),);
      //   }
      // },),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.heartBroken: _heartbrokenFilterSet,
            Filter.vibing: _vibingFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _heartbrokenFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _heartbrokenFilterSet = isChecked;
                });
              },
              title: Text(
                'Heart-broken songs',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include heart-broken songs.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 35,
                right: 20,
              ),
            ),
            SwitchListTile(
              value: _vibingFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vibingFilterSet = isChecked;
                });
              },
              title: Text(
                'Vibing songs',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Only include vibing songs.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 35,
                right: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import { helper } from '@ember/component/helper';

export function range(start, end) {
  const length = end - start + 1;
  return Array.from({ length }, (_, i) => i + start);
}

export default helper(range);